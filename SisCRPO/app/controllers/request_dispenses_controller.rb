class RequestDispensesController < ApplicationController
def new
    @request_dispenses = RequestDispenses.new
    @request_dispenses_show = RequestDispenses.all
    @user = User.all
  end

  def create
    @request_dispenses = RequestDispenses.new(request_dispenses_params)
    @request_dispenses_show = RequestDispenses.all
    @user = User.all
    if @request_dispenses.save
        redirect_to new_request_dispense_path , notice: "Solicitação de Dispensa cadastrada com sucesso."
      else
        render action: :new
    end
  end

def edit
    @request_dispenses = RequestDispenses.find(params[:id])
    @user = User.all
    end
end

def update
      @request_dispenses = RequestDispenses.find(params[:id])
      if @request_dispenses.update_attributes(request_dispenses_params)
      	@user = User.all
           redirect_to new_request_dispenses_path, notice: "Solicitação de Dispensa editado com sucesso."
      else

            redirect_to new_request_dispenses_path, :flash => { :error => "Erro ao editar o Solicitação de Dispensa!" }
      end
end

def destroy
      @request_dispenses = RequestDispenses.find(params[:id])
      @request_dispenses.destroy
      redirect_to new_request_dispenses_path, notice: "Solicitação de Dispensa removida com sucesso."
end

  private
  def request_dispenses_params
    params.require(:request_dispenses).permit(:solicitacao, :data_inicio, :data_fim, :user_id)
  end
end
