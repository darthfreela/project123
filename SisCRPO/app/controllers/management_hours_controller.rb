class ManagementHoursController < ApplicationController
  def new
      @licenca = Solicitation.new
      @licenca_show = Solicitation.all
      # retorno do banco para popular select para usuário
      @select_users = User.all
  end

    def create

      if @licenca.user_id
        @licencas_show = Solicitation.find(params[:user_id])
        redirect_to new_management_hour_path, notice: "Solicitação consultada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @licenca = Solicitation.find(params[:id])
      @licenca.destroy
      redirect_to new_licenca_path, notice: "Solicitação excluída com sucesso."
    end

    def edit
      @botao = 'edit'
      @select_users = User.all
      @licenca = Solicitation.find(params[:id])
    end

    def update
      @select_users = User.all
      @licenca = Solicitation.find(params[:id])
      @licenca.update_attributes(licenca_params)

      redirect_to new_licenca_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def licenca_params
        params.require(:Solicitation).permit(:idFunc, :nome, :tipo, :ordem, :dataInicial, :dataFinal, :aprovado, :user_id )
    end
end
