class ExtraHourDistributionsController < ApplicationController
  def new
    @extra_hour_distribution = ExtraHourDistribution.new
    @extra_hour_distribution_show = ExtraHourDistribution.all

    @select_gpms = Gpm.all
  end

  def create
    @extra_hour_distribution = ExtraHourDistribution.new(extra_hour_distribution_params)
    @extra_hour_distribution_show = ExtraHourDistribution.all
    @select_gpms = Gpm.all
    if @extra_hour_distribution.save
      redirect_to new_extra_hour_distribution_path, notice: "Distribuição de hora extra cadastrada com sucesso."
    else
      render action: :new
    end
  end

  def edit
    @botao = 'edit'
    @extra_hour_distribution = ExtraHourDistribution.find(params[:id])
    @select_gpms = Gpm.all
  end

  def update
    @extra_hour_distribution = ExtraHourDistribution.find(params[:id])
    if @extra_hour_distribution.update_attributes(extra_hour_distribution_params)
        redirect_to new_extra_hour_distribution_path, notice: "Distribuição de hora extra editada com sucesso."
    else
        redirect_to new_extra_hour_distribution_path, :flash => { :error => "Erro ao editar a distribuição de Hora Extra!" }
    end
  end

  def destroy
    @extra_hour_distribution = ExtraHourDistribution.find(params[:id])
    @extra_hour_distribution.destroy
    redirect_to new_extra_hour_distribution_path, notice: "Distribuição de hora extra removida com sucesso."
  end

  private
  def extra_hour_distribution_params
    params.require(:extra_hour_distribution).permit(:gpm_id, :how_many_hours,
      :date_begin, :date_end)
  end
end
