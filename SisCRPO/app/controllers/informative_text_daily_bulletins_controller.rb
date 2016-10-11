class InformativeTextDailyBulletinsController < ApplicationController
  def new
    @informative_text = InformativeTextDailyBulletin.new
    @informative_text_show = InformativeTextDailyBulletin.all
  end

  def edit
    @informative_text = InformativeTextDailyBulletin.find(params[:id])
  end

  def create
    @informative_text = InformativeTextDailyBulletin.new(informative_text_params)
    @informative_text_show = InformativeTextDailyBulletin.all
    if @informative_text.save
      redirect_to new_informative_text_daily_bulletin_path, notice: "Texto Informativo cadastrado com sucesso."
    else
      render action: :new
    end
  end

  def update
    @informative_text = InformativeTextDailyBulletin.find(params[:id])
    if @informative_text.update_attributes(informative_text_params)
        redirect_to new_informative_text_daily_bulletin_path, notice: "Texto Informativo cadastrado com sucesso."
    else
        redirect_to new_informative_text_daily_bulletin_path, :flash => { :error => "Erro ao editar o texto informativo!" }
    end
  end

  def destroy
    @informative_text = InformativeTextDailyBulletin.find(params[:id])
    @informative_text.destroy
    redirect_to new_informative_text_daily_bulletin_path, notice: "Texto Informativo cadastrado com sucesso."
  end

  private
  def informative_text_params
    params.require(:informative_text_daily_bulletin).permit(:type, :description)
  end
end
