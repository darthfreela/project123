class UniformsController < ApplicationController
  def new
    @uniform = Uniform.new
    @uniform_show = Uniform.all
  end

  def edit
    @uniform = Uniform.find(params[:id])
  end

  def create
    @uniform = Uniform.new(uniform_params)
    @uniform_show = Uniform.all

    if @uniform.save
      redirect_to new_uniform_path, notice: "Uniforme cadastrado com sucesso."
    else
      render action: :new
    end
  end

  def update
    @uniform = Uniform.find(params[:id])
    @uniform.update_attributes(uniform_params)

    redirect_to new_uniform_path, notice: "Uniforme editado com sucesso."
  end

  def destroy
    @uniform = Uniform.find(params[:id])
    @uniform.destroy
    redirect_to new_uniform_path, notice: "Uniforme removido com sucesso."
  end

  private
  def uniform_params
    params.require(:uniform).permit(:initials, :name, :description)
  end
end
