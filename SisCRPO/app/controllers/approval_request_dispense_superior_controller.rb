class ApprovalRequestDispenseSuperiorController < ApplicationController
  def new
    @request_dispenses = RequestDispense.where(aprovado: nil).all
  end

  def edit
    @request_dispense = RequestDispense.find(params[:id])
  end
  def update
    RequestDispense.update(:id, :aprovado => true)
    redirect_to approval_request_dispense_superior_new_path, notice: "Solicitação alterada com sucesso."
  end
  def reprove
    RequestDispense.update(:id, :aprovado => false)
    redirect_to new_approval_request_dispense_superior_path, notice: "Solicitação negada com sucesso."
  end
end
