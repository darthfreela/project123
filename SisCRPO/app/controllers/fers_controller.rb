class FersController < ApplicationController
  def new
      @fer = Fer.new
      @fer_show = Fer.all
  end

    def create
      @fer = Fer.new(fer_params)
      @fer_show = Fer.all

      if @fer.save
        redirect_to new_fer_path, notice: "Solicitação registrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @fer = Fer.find(params[:id])
      @fer.destroy
      redirect_to new_fer_path, notice: "Solicitação excluída com sucesso."
    end

    def edit
      @fer = Fer.find(params[:id])
    end

    def update
      @fer = Fer.find(params[:id])
      @fer.update_attributes(fer_params)

      redirect_to new_fer_path, notice: "Solicitação alterada com sucesso."
    end

    private
    def fer_params
        params.require(:fer).permit(:idFunc, :dataInicial, :dataFinal, :aprovado)
    end
end
