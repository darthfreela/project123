class FunctionsController < ApplicationController

  def new
    @function = Function.new
    @function_show = Function.all
  end


  def edit
    @function = Function.find(params[:id])
  end


  def create
    @function = Function.new(function_params)
    @function_show = Function.all

    if @function.save
      redirect_to new_function_path, notice: "Função cadastrada com sucesso."
    else
      render action: :new
    end
  end


  def update
    @function = Function.find(params[:id])
    @function.update_attributes(function_params)

    redirect_to new_function_path, notice: "Função editada com sucesso."
  end


  def destroy
    @function = Function.find(params[:id])
    @function.destroy
    redirect_to new_function_path, notice: "Função removida com sucesso."
  end


  private
  def function_params
    params.require(:function).permit(:sigla, :funcao, :vagas, :data_alteracao, :ativo)
  end
end
