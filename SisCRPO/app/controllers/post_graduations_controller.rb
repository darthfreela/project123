class PostGraduationsController < ApplicationController

  def new
    @post_graduation = PostGraduation.new
    @post_graduation_show = PostGraduation.all
  end

  def create
    @post_graduation_show = PostGraduation.all
    @post_graduation = PostGraduation.new(post_graduation_params)
    if @post_graduation.save
      redirect_to new_post_graduation_path, notice: "Posto/Graduação cadastrado com sucesso."
    else
      render action: :new
    end
  end

  def destroy
    @post_graduation = PostGraduation.find(params[:id])
    @post_graduation.destroy
    redirect_to new_post_graduation_path, notice: "Posto/Graduação removido com sucesso."
  end

  def edit
    @botao = 'edit'
    @post_graduation = PostGraduation.find(params[:id])
  end

  def update
    @post_graduation = PostGraduation.find(params[:id])
    @post_graduation.update_attributes(post_graduation_params)

    redirect_to new_post_graduation_path, notice: "Posto/Graduação editado com sucesso."
  end

  private
  def post_graduation_params
    params.require(:post_graduation).permit(:initials, :name, :active)
  end
end
