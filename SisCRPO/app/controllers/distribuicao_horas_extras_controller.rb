class DistribuicaoHorasExtrasController < ApplicationController
  def new
      @distribuicaohorasextra = DistribuicaoHorasExtra.new
      @distribuicaohorasextra_show = DistribuicaoHorasExtra.all
    end

    def create
      @distribuicaohorasextra = DistribuicaoHorasExtra.new(distribuicaohorasextra_params)
      @distribuicaohorasextra_show = DistribuicaoHorasExtra.all
      if @distribuicaohorasextra.save
        redirect_to new_distribuicao_horas_extra_path, notice: "Hora extra cadastrada com sucesso."
      else
        render action: :new
      end

      end


    def destroy
      @distribuicaohorasextra = DistribuicaoHorasExtra.find(params[:id])
      @distribuicaohorasextra.destroy
      redirect_to new_distribuicao_horas_extra_path, notice: "Hora extra removida com sucesso."
    end

    def edit
      @distribuicaohorasextra = DistribuicaoHorasExtra.find(params[:id])
       @distribuicaohorasextra.dataInicio = @distribuicaohorasextra.dataInicio.strftime("%d/%m/%Y")
     @distribuicaohorasextra.dataTermino = @distribuicaohorasextra.dataTermino.strftime("%d/%m/%Y")
    end

    def update

      @distribuicaohorasextra = DistribuicaoHorasExtra.find(params[:id])
        if @distribuicaohorasextra.update_attributes(distribuicaohorasextra_params)
            redirect_to new_distribuicao_horas_extra_path, notice: "Hora extra editada com sucesso."
        else
            redirect_to new_distribuicao_horas_extra_path, :flash => { :error => "Erro ao editar a Hora Extra!" }
        end

    end

    private
    def distribuicaohorasextra_params
      params.require(:distribuicao_horas_extra).permit(:idUnidade, :unidade, :cidade, :numeroDeHoras,
        :dataInicio, :dataTermino)
    end

end