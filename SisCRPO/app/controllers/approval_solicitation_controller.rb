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
         # retorna com a mensagem de sucesso
         redirect_to new_approval_solicitation_path,
          notice: "Solicitação aprovada com sucesso."
       end
  end
end
