class PlatoonsController < ApplicationController
  def new
    @platoon = Platoon.new
    @platoon_show = Platoon.all
    
    #mock de cidades simulando retorno do banco
    @select_gpms = Gpm.all
    @select_city = City.where(:uf => "RS")
  end

  def create
      @platoon = Platoon.new(platoonsController_params)
      @platoon_show = Platoon.all

      #mock de cidades simulando retorno do banco
      @select_gpms = Gpm.all
      @select_city = City.where(:uf => "RS")
      if @platoon.save
        redirect_to new_platoon_path, notice: "Pelotão cadastrado com sucesso."
      else
        render action: :new
      end
  end
  
   def destroy
      @platoon = Platoon.find(params[:id])
      @platoon.destroy
      redirect_to new_platoon_path, notice: "Peotão removido com sucesso."
    end

  def edit
    @platoon = Platoon.find(params[:id])
  end

  def update
      @platoon = Platoon.find(params[:id])
      @platoon.update_attributes(platoon_params)

      redirect_to new_platoon_path, notice: "Pelotão editado com sucesso."
  end

 private
    def platoon_params
      params.require(:platoon).permit(:name, :gpm_id, :city_id)
    end
end
