class ReleaseVacationsController < ApplicationController
  def new
        @lancamento_ferias = ReleaseVacation.new
        @lancamento_ferias_show = ReleaseVacation.all
        @user_atual = User.find(current_user.id)
  end

  def create
       @lancamento_ferias = ReleaseVacation.new(lancamento_ferias_params)
       @lancamento_ferias_show = ReleaseVacation.all
       @user_atual = User.find(current_user.id)
      if @lancamento_ferias.save
        redirect_to new_release_vacation_path, notice: "Solicitação de férias concluída com sucesso."
      else
        render action: :new
      end
  end

  def destroy
      @lancamento_ferias = ReleaseVacation.find(params[:id])
      @lancamento_ferias.destroy
      redirect_to new_release_vacation_path, notice: "Solicitação de férias removida com sucesso."
    end

  def edit
     @lancamento_ferias = ReleaseVacation.find(params[:id])
     @lancamento_ferias.inicial_date = @lancamento_ferias.inicial_date.strftime("%d/%m/%Y")
     @lancamento_ferias.final_date = @lancamento_ferias.final_date.strftime("%d/%m/%Y")
     @user_atual = User.find(current_user.id)
  end

  def update
      @lancamento_ferias = ReleaseVacation.find(params[:id])
      @lancamento_ferias.update_attributes(lancamento_ferias_params)
      @user_atual = User.find(current_user.id)
      redirect_to new_release_vacation_path, notice: "Solicitação de férias editada com sucesso."
end

private
def lancamento_ferias_params
    params.require(:release_vacation).permit(:inicial_date, :final_date, :user_id)
end

end
