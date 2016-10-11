class PlatoonsController < ApplicationController
  def new
    @platoon = Platoon.new
    @platoon_show = Platoon.all
    #mock de cidades simulando retorno do banco
    @select_gpms = Array.new
  end

  def create
      @platoon = Platoon.new(platoonsController_params)
      @platoon_show = Platoon.all

      #mock de cidades simulando retorno do banco
      @select_gpms = Array.new
    
       if @platoon.save
        redirect_to new_platoon_path, notice: "Pelotão cadastrado com sucesso."
      else
        render action: :new
      end
  end
  def cities_platoon
    puts params[:uf]
    uf = params[:uf]
    cities = City.where(:uf => uf)
    cty = []
    cities.each do |city|
      cty << {:id => city.id, :n => city.name}
      puts city.nome
    end
    render :json => {:cty => cty.compact}.as_json
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
