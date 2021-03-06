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

    @notification = Notification.where(id_action_notification: @approval_solicitation.id, status: 0, manager_function_id: current_user.function_id)
    $notifications.delete(@notification)
    @notification.update_all(:status => 1)
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
      if current_user.function_id != @toApprove.user.function.manager_function_id && current_user.function.manager_function_id != -1
        # se tem cria um registro novo para ser aprovado com a função do superior
        @approval_solicitation = ApprovalSolicitation.new
        @approval_solicitation.solicitation_id =  @toApprove.solicitation_id
        @approval_solicitation.status = 0
        @approval_solicitation.manager_function_id =  current_user.function.manager_function_id
        @approval_solicitation.save

        #####################################################
        #cria uma notificação no banco de dados
        title_notification = "Aprovação de solicitação"

        @notification = Notification.new
        # id do usuário que gerou a notificação
        @notification.user_id = user_id_solicitation
        # id da funçaõ que deve apareçer a notificação
        @notification.manager_function_id = current_user.function.manager_function_id
        # descrição da notificação
        @notification.description = "Usuário solicitante: " + @toApprove.solicitation.user.name
        # titulo da notificação
        @notification.title_notification = title_notification
        # nome do controller que deve ir a notificação
        @notification.controller_description = "approval_solicitation"
        # ação que deve acionar no controller para a notificação
        @notification.action_description = "edit"
        # status (0- não visualizado, 1-visualizado)
        @notification.status = 0
        # id para mandar juntamente com a ação na url
        @notification.id_action_notification = @approval_solicitation.id

        # adiciona 48 horas ou 2 dias para a data atual
        @notification.date_expiration = Time.now + 2.days
        @notification.save

        # retorna com a mensagem de sucesso e enviado para o próximo a aprovar
        redirect_to new_approval_solicitation_path,
         notice: "Solicitação aprovada com sucesso, e enviada para o próximo superior."
       else
         # cria uma nova substituição temporária
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
        # id do usuário que gerou a notificação
        @notification.user_id = user_id_solicitation
        # id da funçaõ que deve apareçer a notificação , nocaso do ultimo salva o function_id do superior
        @notification.manager_function_id = current_user.function_id
        # descrição da notificação
        @notification.description = "Usuário solicitante: " + @toApprove.solicitation.user.name
        # titulo da notificação
        @notification.title_notification = title_notification
        # nome do controller que deve ir a notificação
        @notification.controller_description = "temporary_replacements"
        # ação que deve acionar no controller para a notificação
        @notification.action_description = "edit"
        # status (0- não visualizado, 1-visualizado)
        @notification.status = 0
        # id para mandar juntamente com a ação na url
        @notification.id_action_notification = @temporary_replacement.id

        # adiciona 48 horas ou 2 dias para a data atual
        @notification.date_expiration = Time.now + 2.days
        @notification.save

        # retorna com a mensagem de sucesso
         redirect_to new_approval_solicitation_path,
          notice: "Solicitação aprovada com sucesso, foi enviada para o RH fazer a substituição temporária."
       end
  end
end
