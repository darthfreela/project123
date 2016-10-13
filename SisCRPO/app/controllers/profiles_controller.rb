class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @profile_show = Profile.all
    #mok
    @select_tipo_usuario = Array.new
    ar = ["  ","Administrador","Usuário"]
    ar.each do |i|
      @select_tipo_usuario <<  "#{i}"
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile_show = Profile.all
    #mok
    @select_tipo_usuario = Array.new
    ar = ["  ","Administrador","Usuário"]
    ar.each do |i|
      @select_tipo_usuario <<  "#{i}"
    end
    if @profile.save
      redirect_to new_profile_path , notice: "Perfil cadastrado com sucesso."
    else
      render action: :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    #mok
    @select_tipo_usuario = Array.new
    ar = ["  ","Administrador","Usuário"]
    ar.each do |i|
      @select_tipo_usuario <<  "#{i}"
    end
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      redirect_to new_profile_path, notice: "Perfil editado com sucesso."
    else
      redirect_to new_profile_path, :flash => { :error => "Erro ao editar o Perfil!" }
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to new_profile_path, notice: "Perfil removido com sucesso."
  end


  private
  def profile_params
    params.require(:profile).permit(:name, :active)
  end
end
