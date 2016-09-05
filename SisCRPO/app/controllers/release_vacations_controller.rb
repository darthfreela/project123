class ReleaseVacationsController < ApplicationController
  def new
        @lancamento_ferias = ReleaseVacation.new
        @lancamento_ferias_show = ReleaseVacation.all
  end

  def create
       @lancamento_ferias = ReleaseVacation.new(lancamento_ferias_params, :approved => 0)
       @lancamento_ferias_show = ReleaseVacation.all

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
  end

  def update
      @lancamento_ferias = ReleaseVacation.find(params[:id])
      @lancamento_ferias.update_attributes(lancamento_ferias_params)

      redirect_to new_release_vacation_path, notice: "Solicitação de férias editada com sucesso."
end

private
def lancamento_ferias_params
    params.require(:release_vacation).permit(:inicial_date, :final_date, :user_id)
end

end
