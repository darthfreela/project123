class LicencasController < ApplicationController
  def new
      @licenca = Licenca.new
      @licenca_show = Licenca.all
  end

    def create
      @licenca = Licenca.new(licenca_params)
      @licenca_show = Licenca.all

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
      @licenca = Licenca.find(params[:id])
    end

    def update
      @licenca = Licenca.find(params[:id])
      @licenca.update_attributes(licenca_params)

      redirect_to new_licenca_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def licenca_params
        params.require(:licenca).permit(:idFunc, :nome, :tipo, :ordem, :dataInicial, :dataFinal, :aprovado)
    end
end
