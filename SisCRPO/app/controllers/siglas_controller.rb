class SiglasController < ApplicationController
  def new
        @sigla = Sigla.new
        @sigla_show = Sigla.all
    end

    def create
        @sigla = Sigla.new(sigla_params)
        @sigla_show = Sigla.all

        if @sigla.save
            redirect_to new_sigla_path , notice: "Sigla cadastrada com sucesso."
        else
            render action: :new
        end
    end

    def edit
        @sigla = Sigla.find(params[:id])
    end

    def update
        @sigla = Sigla.find(params[:id])
        if @sigla.update_attributes(sigla_params)
            redirect_to new_sigla_path, notice: "Sigla cadastrada com sucesso."
        else
            redirect_to new_sigla_path, :flash => { :error => "Erro ao editar a sigla!" }
        end
    end

    def destroy
        @sigla = Sigla.find(params[:id])
        @sigla.destroy
        redirect_to new_sigla_path, notice: "Sigla removida com sucesso."
    end

    private
    def sigla_params
        params.require(:sigla).permit(:sigla, :nome)
    end
end
