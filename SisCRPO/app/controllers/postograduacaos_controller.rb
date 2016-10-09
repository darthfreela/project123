class PostograduacaosController < ApplicationController

  def new
    @postograduacao = Postograduacao.new
    @postograduacao_show = Postograduacao.all
  end

def create
      @postograduacao = Postograduacao.new(postograduacao_params)
      if @postograduacao.save
        redirect_to new_postograduacao_path, notice: "Posto/Graduação cadastrado com sucesso."
      else
        render action: :new
      end
    end

 def destroy
      @postograduacao = Postograduacao.find(params[:id])
      @postograduacao.destroy
      redirect_to new_postograduacao_path, notice: "Posto/Graduação removido com sucesso."
end

def edit
      @postograduacao = Postograduacao.find(params[:id])
end

def update
      @postograduacao = Postograduacao.find(params[:id])
      @postograduacao.update_attributes(postograduacao_params)

      redirect_to new_postograduacao_path, notice: "Posto/Graduação editado com sucesso."
end

private
    def postograduacao_params
      params.require(:postograduacao).permit(:sigla, :nomePostoGraduacao, :ativo)
    end
end
