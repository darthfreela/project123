class UsersController < ApplicationController


  def new
    @user = User.new
    @user_show = User.all
    @postograduacao = PostGraduation.all
    @select_funcoes = Function.all
    @select_perfis = Profile.all
  end

  def create
    @user = User.new(user_params)
    @user_show = User.all
    @postograduacao = PostGraduation.all
    @select_funcoes = Function.all
    @select_perfis = Profile.all

    if @user.save
        #@user_function = UsersFunction.new(@user.id, :function_id)
        #@user_function.save
        redirect_to new_user_path , notice: "Usuário cadastrado com sucesso."
      else
        render action: :new
    end
  end

def edit
   @botao = 'edit'
      @user = User.find(params[:id])
      @postograduacao = PostGraduation.all
      @select_funcoes = Function.all
      @select_perfis = Profile.all
end

def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        @postograduacao = PostGraduation.all
           redirect_to new_user_path, notice: "Usuário editado com sucesso."
      else

            redirect_to new_user_path, :flash => { :error => "Erro ao editar o usuário!" }
      end
end

def findIdFunc
    @user = User.find(params[:id_func])
end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to new_user_path, notice: "Usuário removido com sucesso."
end


def change_current_profile
  User.find(current_user.id).update_column(:current_profile, params[:profile_id])
  redirect_to '/'
end

def change_password_page

end

def change_password_function
      @user = User.find(current_user.id)
      puts "----------------------------------------------------------------------"
      #@user.password = params[:password]
      #@user.password_confirmation = params[:password_confirmation]

      if @user.update_attribute('password', params[:password])
           redirect_to new_user_path, notice: "Senha modificada com sucesso."
      else

            redirect_to users_change_password_path , :flash => { :error => "Erro ao modificar senha." }
      end
end

  private
  def user_params
    params.require(:user).permit(:name, :username,
                                 :actived, :id_func, :email,  :cpf, :war_name,
                                 :image_path, :function_id, :birth,
                                 :gender, :address, :neighborhood, :city, :state, :zip_code,
                                 :post_graduation_id, :current_profile)
  end
end
