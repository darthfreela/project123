class InitialsController < ApplicationController
  def new
        @initial = Initial.new
        @initial_show = Initial.all
    end

    def create
        @initial = Initial.new(initial_params)
        @initial_show = Initial.all

        if @initial.save
            redirect_to new_initial_path , notice: "Sigla cadastrada com sucesso."
        else
            render action: :new
        end
    end

    def edit
        @botao = 'edit'
        @initial = Initial.find(params[:id])
    end

    def update
        @initial = Initial.find(params[:id])
        if @initial.update_attributes(initial_params)
            redirect_to new_initial_path, notice: "Sigla cadastrada com sucesso."
        else
            redirect_to new_initial_path, :flash => { :error => "Erro ao editar a sigla!" }
        end
    end

    def destroy
        @initial = Initial.find(params[:id])
        @initial.destroy
        redirect_to new_initial_path, notice: "Sigla removida com sucesso."
    end

    private
    def initial_params
        params.require(:initial).permit(:initial, :name)
    end
end
