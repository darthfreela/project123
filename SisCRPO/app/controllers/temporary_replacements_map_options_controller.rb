class TemporaryReplacementsMapOptionsController < ApplicationController
  def new
    @parameter = TemporaryReplacementsMapOption.first
  end

  def edit
    @parameter = TemporaryReplacementsMapOption.find(params[:id])
  end

  def update
    @parameter = TemporaryReplacementsMapOption.find(params[:id])
        if @parameter.update_attributes(options_params)
            redirect_to new_temporary_replacements_map_path, notice: "Parâmetros atualizados com sucesso."
        else
            redirect_to new_temporary_replacements_map_option_path, :flash => { :error => "Erro ao editar a parâmetros." }
        end
  end

  private
    def options_params
        params.require(:temporary_replacements_map_option).permit(:director_tag, :opm_tag, :opm_telephone_tag, :cost_center_tag)
    end
end
