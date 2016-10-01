class RequestDispensesController < ApplicationController
def new
    @request_dispenses = RequestDispense.new
    @request_dispenses_show = RequestDispense.all
    @postograduacao = Postograduacao.where(id: current_user.postograduacao_id).first
end

  def create
    @request_dispenses = RequestDispense.new(request_dispenses_params)
    @request_dispenses_show = RequestDispense.all
    @postograduacao = Postograduacao.where(id: current_user.postograduacao_id).first
    if @request_dispenses.save
        redirect_to new_request_dispense_path , notice: "Solicitação de Dispensa cadastrada com sucesso."
    else
        render action: :new
    end
  end

def edit
    @request_dispenses = RequestDispense.find(params[:id])
    @request_dispenses.data_inicio = @request_dispenses.data_inicio.strftime("%d/%m/%Y")
    @request_dispenses.data_fim = @request_dispenses.data_fim.strftime("%d/%m/%Y")
    @postograduacao = Postograduacao.where(id: current_user.postograduacao_id).first
end

def update
      @request_dispenses = RequestDispense.find(params[:id])
      if @request_dispenses.update_attributes(request_dispenses_params)
        @postograduacao = Postograduacao.where(id: current_user.postograduacao_id).first
           redirect_to new_request_dispense_path, notice: "Solicitação de Dispensa editado com sucesso."
      else

            redirect_to new_request_dispense_path, :flash => { :error => "Erro ao editar o Solicitação de Dispensa!" }
      end
end

def destroy
      @request_dispenses = RequestDispense.find(params[:id])
      @request_dispenses.destroy
      redirect_to new_request_dispense_path, notice: "Solicitação de Dispensa removida com sucesso."
end

  private
  def request_dispenses_params
    params.require(:request_dispense).permit(:solicitacao, :data_inicio, :data_fim, :user_id)
  end
end