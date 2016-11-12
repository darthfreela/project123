class ApprovalSolicitationController < ApplicationController
  def new
    @approval_solicitations = ApprovalSolicitation.where(
      manager_function_id: current_user.function_id,status: [0,1] ).all
  end

  def edit
    @approval_solicitation = ApprovalSolicitation.find(params[:id])
    @approval_solicitation.update(:status => 1 ,:user_id => current_user.id)

    @solicitation_list_approved = ApprovalSolicitation.where(
      solicitation_id: @approval_solicitation.solicitation_id, status: 2).all

    @approval_solicitation.solicitation.update(:status => 1)
  end

  """
    Método de reprovação, se o registro for reprovado, deve retornar
      diretamente para o usuário que solicitou, sem precisar ser aprovado
      por mais algum superior...
  """
  def reprove
    @toApprove = ApprovalSolicitation.find(params[:id])
    @toApprove.update(:status => 3 ,:user_id => current_user.id)
    @toApprove.solicitation.update(:status => 3)
    redirect_to new_approval_solicitation_path, notice: "Solicitação negada com sucesso."
  end

"""
  Método de aprovação de solicitações, quando o superior tem alguem acima dele
   gera um novo registro na tabela de aprovações, com o function_id do próximo
     a aprovar.
"""
  def approve
    @toApprove = ApprovalSolicitation.find(params[:id])
    @toApprove.update(:status => 2 ,:user_id => current_user.id)
    @toApprove.solicitation.update(:status => 2)

    # guarda o id do usuario que solicitou
    user_id_solicitation = @toApprove.solicitation.user.id

    # testa se o usuário tem uma função superior a sua...
      if current_user.function_id != @toApprove.user.function.manager_function_id
        # se tem cria um registro novo para ser aprovado com a função do superior
        @approval_solicitation = ApprovalSolicitation.new
        @approval_solicitation.solicitation_id =  @toApprove.solicitation_id
        @approval_solicitation.status = 0
        @approval_solicitation.manager_function_id =  @toApprove.user.function.manager_function_id
        @approval_solicitation.save

        # retorna com a mensagem de sucesso e enviado para o próximo a aprovar
        redirect_to new_approval_solicitation_path,
         notice: "Solicitação aprovada com sucesso, e enviada para o próximo superior."
       else
         @temporary_replacement = TemporaryReplacement.new
         @temporary_replacement.occupant_id_func = user_id_solicitation
         #razão de indisponibilidade
         @temporary_replacement.unavailability_reason = @toApprove.solicitation.description
         @temporary_replacement.date_begin = @toApprove.solicitation.date_begin
         @temporary_replacement.date_end = @toApprove.solicitation.date_end
         @temporary_replacement.solicitation_id = @toApprove.solicitation_id

        #  Salva o registro para substituiçao temporaria
        @temporary_replacement.save

        #####################################################
        #cria uma notificação no banco de dados
        title_notification = ""

        # switch no rails
        case @toApprove.solicitation.type_solicitation # a_variable is the variable we want to compare
          when 0    #compare to 0
            title_notification = "Solicitação de férias"
          when 1    #compare to 1
            title_notification = "Solicitação de dispensa"
          else
            title_notification = "Solicitação de licença"
          end

        @notification = Notification.new
        @notification.user_id = user_id_solicitation
        @notification.description = "Usuário solicitante: " + @toApprove.solicitation.user.name
        @notification.title_notification = title_notification
        @notification.controller_description = "temporary_replacements"
        @notification.action_description = "edit"
        @notification.status = 0
        @notification.id_action_notification = @temporary_replacement.id

        # adiciona 48 horas para a data atual
        @notification.date_expiration = Time.now + 2.days
        @notification.save

        # retorna com a mensagem de sucesso
         redirect_to new_approval_solicitation_path,
          notice: "Solicitação aprovada com sucesso, foi enviada para o RH fazer a substituição temporária."
       end
  end
end
