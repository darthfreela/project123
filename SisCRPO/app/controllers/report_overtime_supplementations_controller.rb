class ReportOvertimeSupplementationsController < ApplicationController
  def index
  	@report = ReportOvertimeSupplementation.new
  	@select_cities = City.all
  	@select_opms = Opm.all
  end
  def cities_by_state
  	puts "  aqui   "
    uf = params[:uf]
    cities = City.where(:uf => uf)
    cty = []
    cities.each do |city|
      cty << {:id => city.id, :n => city.nome}
    end
    render :json => {:cty => cty.compact}.as_json
  end
end
