class ReportOvertimeSupplementationsController < ApplicationController
  def index
  	@report = ReportOvertimeSupplementation.new
  	@select_cities = City.all
  	
  	@select_opms = Opm.all
  end
  def cities_by_state
  	uf = params[:uf]
    cities = City.where(:uf => uf)
    cty = []
    cities.each do |city|
      cty << {:id => city.id, :n => city.nome}
    end
    render :json => {:cty => cty.compact}.as_json
  end

  def make_report_supplemention
  	cidade = params[:cidade]
  	puts "------ aqui1 ------"
  	@report_show = DistribuicaoHorasExtra.all
  	puts "------ aqui ------"
  	make = []
  	respond_to do |r|
      
      r.pdf { render pdf: "relHorSupl",
        header: {center: "Relatório de Horas Extras/Suplementação "},
        footer: { center: "[page] of [topage]" }
      }
    end
     render :json => {:make => make.compact}.as_json
  end

end
