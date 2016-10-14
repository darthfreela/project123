class GpmsController < ApplicationController
    def new
      @gpm = Gpm.new
      @gpm_show = Gpm.all
      @select_cities = City.where(:uf => "RS")
    end

    def create
      @gpm = Gpm.new(gpm_params)
      @gpm_show = Gpm.all

      @select_cities = City.where(:uf => "RS")

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
      @botao = 'edit'
      @gpm = Gpm.find(params[:id])
      @select_cities = City.where(:uf => "RS")
    end

    def update
      @gpm = Gpm.find(params[:id])
      @gpm.update_attributes(gpm_params)

      redirect_to new_gpm_path, notice: "Gpm editada com sucesso."
    end

    private
    def gpm_params
      params.require(:gpm).permit(:initial, :name, :city_id, :actived)
    end
end
