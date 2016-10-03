class ApprovalRequestDispenseSuperiorController < ApplicationController
  def new
    @request_dispenses = RequestDispense.where(approved: [nil, 3]).all
  end

  def edit
    @request_dispense = RequestDispense.find(params[:id])
  end
  def update
    RequestDispense.update(:id, :aprovado => true)
    redirect_to approval_request_dispense_superior_new_path, notice: "Solicitação alterada com sucesso."
  end
  def reprove
    @toApprove = RequestDispense.find(params[:id])
    @toApprove.update(:approved => 1)
    redirect_to new_approval_request_dispense_superior_path, notice: "Solicitação negada com sucesso."
  end
  def approve
      @toApprove = RequestDispense.find(params[:id])
      @toApprove.update(:approved => 2)
      redirect_to new_approval_request_dispense_superior_path, notice: "Solicitação aprovada com sucesso."
  end

end
