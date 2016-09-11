class LicencasController < ApplicationController
  def new
      @licenca = Licenca.new
      @licenca_show = Licenca.all
      # retorno do banco para popular select para usuário
      @select_users = User.all
  end

    def create
      @licenca = Licenca.new(licenca_params)
      @licenca_show = Licenca.all

      @select_users = User.all

      if @licenca.save
        redirect_to new_licenca_path, notice: "Solicitação registrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @licenca = Licenca.find(params[:id])
      @licenca.destroy
      redirect_to new_licenca_path, notice: "Solicitação excluída com sucesso."
    end

    def edit
      @select_users = User.all
      @licenca = Licenca.find(params[:id])
    end

    def update
      @select_users = User.all
      @licenca = Licenca.find(params[:id])
      @licenca.update_attributes(licenca_params)

      redirect_to new_licenca_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def licenca_params
        params.require(:licenca).permit(:idFunc, :nome, :tipo, :ordem, :dataInicial, :dataFinal, :aprovado, :user_id )
    end
end
