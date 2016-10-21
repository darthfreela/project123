class FunctionsController < ApplicationController

  def new
    @function = Function.new
    @function_show = Function.all
    @select_funcoes = Function.all
  end


  def edit
    @botao = 'edit'
    @function = Function.find(params[:id])

    @select_funcoes = Function.all
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
    params.require(:function).permit(:initials, :name, :vacancies, :actived, :manager_function_id)
  end
end
