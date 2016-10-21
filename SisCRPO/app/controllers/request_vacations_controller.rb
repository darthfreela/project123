class RequestVacationsController < ApplicationController
	def new
        @lancamento_ferias = RequestVacation.new
        @lancamento_ferias_show = RequestVacation.all
        @user_atual = User.find(current_user.id)
        @post_graduation = PostGraduation.all
  end

  def create
       @lancamento_ferias = RequestVacation.new(lancamento_ferias_params)
       @lancamento_ferias_show = RequestVacation.all
       @user_atual = User.find(current_user.id)
      if @lancamento_ferias.save
        redirect_to new_request_vacation_path, notice: "Solicitação de férias concluída com sucesso."
      else
        render action: :new
      end
  end

  def destroy
      @lancamento_ferias = RequestVacation.find(params[:id])
      @lancamento_ferias.destroy
      redirect_to new_request_vacation_path, notice: "Solicitação de férias removida com sucesso."
    end

  def edit
     @botao = 'edit'
     @lancamento_ferias = RequestVacation.find(params[:id])
     @lancamento_ferias.date_begin = @lancamento_ferias.date_begin.strftime("%d/%m/%Y")
     @lancamento_ferias.date_end = @lancamento_ferias.date_end.strftime("%d/%m/%Y")
     @user_atual = User.find(current_user.id)
  end

  def update
      @lancamento_ferias = RequestVacation.find(params[:id])
      @lancamento_ferias.update_attributes(lancamento_ferias_params)
      @user_atual = User.find(current_user.id)
      redirect_to new_request_vacation_path, notice: "Solicitação de férias editada com sucesso."
end

private
def lancamento_ferias_params
    params.require(:request_vacation).permit(:date_begin, :date_end, :user_id)
end
end