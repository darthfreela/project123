class SolicitacaoFersController < ApplicationController
  def new
      @solicitacaoFer = SolicitacaoFer.new
      @solicitacaoFer_show = SolicitacaoFer.all
  end

    def create
      @solicitacaoFer = SolicitacaoFer.new(solicitacaoFer_params)
      @solicitacaoFer_show = SolicitacaoFer.all

      if @solicitacaoFer.save
        redirect_to new_solicitacaoFer_path, notice: "Solicitação registrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @solicitacaoFer = SolicitacaoFer.find(params[:id])
      @solicitacaoFer.destroy
      redirect_to new_solicitacaoFer_path, notice: "Solicitação excluída com sucesso."
    end

    def edit
      @solicitacaoFer = SolicitacaoFer.find(params[:id])
    end

    def update
      @solicitacaoFer = SolicitacaoFer.find(params[:id])
      @solicitacaoFer.update_attributes(solicitacaoFer_params)

      redirect_to new_solicitacaoFer_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def solicitacaoFer_params
        params.require(:solicitacao_fer).permit(:id_func, :data_inicial, :data_final, :aprovado)
    end
end
