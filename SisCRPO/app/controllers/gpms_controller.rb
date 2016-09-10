class GpmsController < ApplicationController
    def new
      @gpm = Gpm.new
      @gpm_show = Gpm.all
      #mock de cidades simulando retorno do banco
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_cidades <<  "#{i}"
      end
    end

    def create
      @gpm = Gpm.new(gpm_params)
      @gpm_show = Gpm.all

       #mock de cidades simulando retorno do banco
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_cidades <<  "#{i}"
      end

      if @gpm.save
        redirect_to new_gpm_path, notice: "Gpm cadastrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @gpm = Gpm.find(params[:id])
      @gpm.destroy
      redirect_to new_gpm_path, notice: "Gpm removida com sucesso."
    end

    def edit
      @gpm = Gpm.find(params[:id])
    end

    def update
      @gpm = Gpm.find(params[:id])
      @gpm.update_attributes(gpm_params)

      redirect_to new_gpm_path, notice: "Gpm editada com sucesso."
    end

    private
    def gpm_params
      params.require(:gpm).permit(:sigla, :nome, :cidade, :descricao)
    end
end
