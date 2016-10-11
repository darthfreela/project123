class RequestLicencesController < ApplicationController
  def new
      @request_licence = RequestLicence.new
      @request_licence_show = RequestLicence.all
      # retorno do banco para popular select para usuário
      @select_users = User.all
  end

    def create
      @request_licence = RequestLicence.new(request_licence_params)
      @request_licence_show = RequestLicence.all

      @select_users = User.all

      if @request_licence.save
        redirect_to new_request_licence_path, notice: "Solicitação registrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @request_licence = RequestLicence.find(params[:id])
      @request_licence.destroy
      redirect_to new_request_licence_path, notice: "Solicitação excluída com sucesso."
    end

    def edit
      @select_users = User.all
      @request_licence = RequestLicence.find(params[:id])
    end

    def update
      @select_users = User.all
      @request_licence = RequestLicence.find(params[:id])
      @request_licence.update_attributes(request_licence_params)

      redirect_to new_request_licence_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def request_licence_params
        params.require(:request_licence).permit(:idFunc, :nome, :tipo, :ordem, :dataInicial, :dataFinal, :aprovado, :user_id )
    end
end
