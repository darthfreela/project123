class OpmsController < ApplicationController
    def new
      @opm = Opm.new
      @opm_show = Opm.all
      
      @select_cities = City.where(:uf => "RS")

    end

    def create
      @opm = Opm.new(opm_params)
      @opm_show = Opm.all

      @select_cities = City.where(:uf => "RS")

      if @opm.save
        redirect_to new_opm_path, notice: "Opm cadastrada com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @opm = Opm.find(params[:id])
      @opm.destroy
      redirect_to new_opm_path, notice: "Opm removida com sucesso."
    end

    def edit
      @botao = 'edit'
      @opm = Opm.find(params[:id])
      @select_cities = City.where(:uf => "RS")
    end

    def update
      @opm = Opm.find(params[:id])
      @opm.update_attributes(opm_params)

      redirect_to new_opm_path, notice: "Opm editada com sucesso."
    end

    private
    def opm_params
      params.require(:opm).permit(:initial, :name, :city_id)
    end
end
