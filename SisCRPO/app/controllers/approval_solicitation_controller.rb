class ApprovalSolicitationController < ApplicationController
  def new
    @approval_solicitations = ApprovalSolicitation.where(
      manager_function_id: current_user.function_id,status: [0,1,3] ).all
    # # @approval_solicitations = ApprovalSolicitation.joins(:user => [:function]).all
    # @approval_solicitations = ApprovalSolicitation.joins(:user).joins(:function)
    # @approval_solicitations = ApprovalSolicitation.where(user.function.manager_function_id: current_user.function_id)
    # puts("***************************************")
    # puts(@approval_solicitations)
    # puts("***************************************")
    # @solicitations = Solicitation.where(approved: [nil, 3]).all
  end

  def edit
    @approval_solicitation = ApprovalSolicitation.find(params[:id])
    @approval_solicitation.update(:status => 1 ,:user_id => current_user.id)
    puts("***********************************")
    puts("FUNCTION ID DO PROXIMO")
    puts(@approval_solicitation.user.function.manager_function_id)
    puts("***********************************")
    puts("***********************************")



  end

  def reprove
    """
        Se o usuario superior NEGAR, a solicitação não vai para o próximo,
        e ja retorna para o usuario solicitante...
    """
    @toApprove = ApprovalSolicitation.find(params[:id])
    @toApprove.update(:status => 3 ,:user_id => current_user.id)
    redirect_to new_approval_solicitation_path, notice: "Solicitação negada com sucesso."
  end
  def approve
    """
        Quando o superior aprovar verificar se tem uma função superior,
        se tem gerar um novo registro na tabela de aprovaçções com o mesmo registro,
        só alterando o function_id do próximo...
    """
      @toApprove = ApprovalSolicitation.find(params[:id])
      @toApprove.update(:status => 2 ,:user_id => current_user.id)

        if current_user.function_id != @toApprove.user.function.manager_function_id
          @approval_solicitation = ApprovalSolicitation.new
          @approval_solicitation.solicitation_id =  @toApprove.solicitation_id
          @approval_solicitation.status = 0
          @approval_solicitation.manager_function_id =  @toApprove.user.function.manager_function_id
          @approval_solicitation.save
          redirect_to new_approval_solicitation_path,
           notice: "Solicitação aprovada com sucesso, e enviada para o próximo superior."
         else
           redirect_to new_approval_solicitation_path,
            notice: "Solicitação aprovada com sucesso."
         end
  end
end
