class EstagiariosController < ApplicationController
  def new
    @estagiario = Estagiario.new
    @estagiario_show = Estagiario.all
  end

 def create
      @estagiario = Estagiario.new(estagiario_params)
      @estagiario_show = Estagiario.all

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
      @estagiarios = Estagiario.find(params[:id])
      @estagiarios.update_attributes(estagiario_params)

      redirect_to new_estagiario_path, notice: "Estagiário editado com sucesso."
end

private
def estagiario_params
     params.require(:estagiario).permit(:nome, :cpf, :sexo, :data_nascimento, :semestre, :endereco, :email, :agcc, :dias_trabalhados, :horas_trabalhadas , :vale_transporte, :vigencia_contrato)
end
end
