class ApprovalSolicitationController < ApplicationController
  def new
    @approval_solicitations = ApprovalSolicitation.where(manager_function_id: current_user.function_id).all
    # # @approval_solicitations = ApprovalSolicitation.joins(:user => [:function]).all
    # @approval_solicitations = ApprovalSolicitation.joins(:user).joins(:function)
    # @approval_solicitations = ApprovalSolicitation.where(user.function.manager_function_id: current_user.function_id)
    puts("***************************************")
    # puts(@approval_solicitations)
    puts("***************************************")
    # @solicitations = Solicitation.where(approved: [nil, 3]).all
  end

  def edit
    @approval_solicitation = ApprovalSolicitation.find(params[:id])
    @approval_solicitation.update(:status => 1 ,:user_id => current_user.id)
  end

  def reprove
    @toApprove = ApprovalSolicitation.find(params[:id])
    @toApprove.update(:status => 3 ,:user_id => current_user.id)
    # @toApprove.update(:approved => 1)
    redirect_to new_approval_solicitation_path, notice: "Solicitação negada com sucesso."
  end
  def approve
      @toApprove = ApprovalSolicitation.find(params[:id])
      @toApprove.update(:status => 2 ,:user_id => current_user.id)
      # @toApprove.update(:approved => 2)
      redirect_to new_approval_solicitation_path, notice: "Solicitação aprovada com sucesso."
  end

end
