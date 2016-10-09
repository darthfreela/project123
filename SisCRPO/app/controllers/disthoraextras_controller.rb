class DisthoraextrasController < ApplicationController
  def new
    @disthoraext = DistHoraExtras.new
      @disthoraext_show = DistHoraExtras.all
  end
def create
      @disthoraext = DistHoraExtras.new(disthoraext_params)
      @disthoraext_show = DistHoraExtras.all

      end


    def destroy
      @disthoraext = DistHoraExtras.find(params[:id])
      @disthoraext.destroy
      redirect_to new_disthoraext_path, notice: "Hora extra removida com sucesso."
    end

    def edit
      @disthoraext = DistHoraExtras.find(params[:id])
    end

    def update
      @disthoraext = DistHoraExtras.find(params[:id])
      @disthoraext.update_attributes(disthoraext_params)

      redirect_to new_disthoraext_path, notice: "Hora extra editada com sucesso."
    end

    private
    def disthoraext_params
      params.require(:disthoraext).permit(:idUnidade, :unidade, :cidade, :numeroDeHoras, :dataInicio, :dataTermino)
    end

end