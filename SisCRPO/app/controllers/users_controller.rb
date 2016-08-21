class UsersController < ApplicationController

  def new
    @user = User.new
    @user_show = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to new_user_path, notice: "Usuário cadastrado com sucesso."
      else
        render action: :new
    end
  end

def edit
      @user = User.find(params[:id])
end

def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)

      redirect_to new_user_path, notice: "Usuário editado com sucesso."
end

def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to new_user_path, notice: "Usuário removido com sucesso."
end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :ativo, :idFunc,
       :email,  :cpf, :nomeGuerra, :imagemUsuario, :idFuncao, :dataNascimento, :sexo, :endereco, :bairro, :cidade, :estado, :cep)
  end
end


