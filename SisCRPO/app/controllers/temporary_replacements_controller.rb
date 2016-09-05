class TemporaryReplacementsController < ApplicationController
  def new
      @tempReplacement = TemporaryReplacement.new
      @tempReplacement_show = TemporaryReplacement.all
  end

  def edit
      @tempReplacement = TemporaryReplacement.find(params[:id])
  end

  def create
      @tempReplacement = TemporaryReplacement.new(tempReplacement_params)
      @tempReplacement_show = TemporaryReplacement.all

      if @tempReplacement.save
        redirect_to new_temporary_replacement_path, notice: "Substituição temporária cadastrada com sucesso."
      else
        render action: :new
      end
  end

  def update
      @tempReplacement = TemporaryReplacement.find(params[:id])
      @tempReplacement.update_attributes(tempReplacement_params)

      redirect_to new_temporary_replacement_path, notice: "Substituição temporária editada com sucesso."
  end

  def destroy
      @tempReplacement = TemporaryReplacement.find(params[:id])
      @tempReplacement.destroy
      redirect_to new_temporary_replacement_path, notice: "Substituição temporária removida com sucesso."
  end

  private
  def tempReplacement_params
      params.require(:temporary_replacement).permit(:idFuncOcupante, :nomeOcupante, :idGraduacaoOcupante, 
        :idFuncaoOcupante, :idFuncSubstituto :nomeSubstituto, :idFuncaoSubstituto, :idGraduacaoSubstituto,
        :situacao, :motivoIndisponibilidade, :idSoliDispAfastamento, :idBoletim)
  end
end
