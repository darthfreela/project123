class EstagiariosController < ApplicationController
  def new
    @estagiario = Estagiario.new
    @estagiario_show = Opm.all
  end

 def create
      @estagiario = Estagiario.new(estagiario_params)
      @estagiario_show = Estagiario.all

       #mock de cidades simulando retorno do banco
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_cidades <<  "#{i}"
      end

      if @estagiario.save
        redirect_to new_estagiario_path, notice: "Estagiário cadastrado com sucesso."
      else
        render action: :new
      end
end

def destroy
      @estagiario = Estagiario.find(params[:id])
      @estagiario.destroy
      redirect_to new_estagiario_path, notice: "Estagiário removido com sucesso."
    end

  def edit
    @estagiario = Estagiario.find(params[:id])
  end

  def update
      @estagiario = Estagiario.find(params[:id])
      @estagiario.update_attributes(estagiario_params)

      redirect_to new_estagiario_path, notice: "Estagiaário editado com sucesso."
end

def update
      @estagiarios = estagiarios.find(params[:id])
      @estagiarios.update_attributes(estagiarios_params)

      redirect_to new_estagiarios_path, notice: "Estagiário editado com sucesso."
    end
end
