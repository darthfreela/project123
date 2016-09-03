class UsersController < ApplicationController

  def new
    @user = User.new
    @user_show = User.all
    #MockObject simulndo retorno do banco para popular select funcao
    @select_funcoes = Function.all

  end

  def create
    @user = User.new(user_params)
    @user_show = User.all
    #mok funcao
    @select_funcao = Function.all

    if @user.save
        @user_function = UsersFunction.new(@user.id, :idUsuarioFuncao)
        @user_function.save
        redirect_to new_user_path , notice: "Usuário cadastrado com sucesso."
      else
        render action: :new
    end
  end

def edit
      @user = User.find(params[:id])
end

def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
           redirect_to new_user_path, notice: "Usuário editado com sucesso."
      else

            redirect_to new_user_path, :flash => { :error => "Erro ao editar o usuário!" }
      end
end

def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to new_user_path, notice: "Usuário removido com sucesso."
end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :ativo, :idFunc,
       :email,  :cpf, :nomeGuerra, :imagemUsuario, :idUsuarioFuncao, :dataNascimento, :sexo, :endereco, :bairro, :cidade, :estado, :cep)
  end
end


