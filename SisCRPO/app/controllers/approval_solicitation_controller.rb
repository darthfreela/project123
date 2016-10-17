class ApprovalSolicitationController < ApplicationController
  def new
    @approval_solicitations = ApprovalSolicitation.joins(:user => [:function]).all
    # @approval_solicitations = ApprovalSolicitation.where(user.function.manager_function_id: current_user.function_id)
    puts("***************************************")
    # puts(@approval_solicitations)
    puts("***************************************")
    @solicitations = Solicitation.where(approved: [nil, 3]).all
  end

  def edit
    @solicitation = Solicitation.find(params[:id])
    @approval_solicitation = ApprovalSolicitation.find(params[:id])
  end
  def update
    Solicitation.update(:id, :aprovado => true)
    redirect_to approval_solicitation_new_path, notice: "Solicitação alterada com sucesso."
  end
  def reprove
    @toApprove = Solicitation.find(params[:id])
    @toApprove.update(:approved => 1)
    redirect_to new_approval_solicitation_path, notice: "Solicitação negada com sucesso."
  end
  def approve
      @toApprove = Solicitation.find(params[:id])
      @toApprove.update(:approved => 2)
      redirect_to new_approval_solicitation_path, notice: "Solicitação aprovada com sucesso."
  end

end
