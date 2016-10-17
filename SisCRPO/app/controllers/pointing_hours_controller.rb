class PointingHoursController < ApplicationController
def new
    @pointingHour = PointingHour.new
    @pointingHour_show = PointingHour.all
    @serviceType = ServiceType.all
    
  end

  def create
    @pointingHour = PointingHour.new(pointingHour_params)
    @pointingHour_show = PointingHour.all
    if @pointingHour.save
        redirect_to new_pointing_hour_path , notice: "Apontamento de Horas cadastrado com sucesso."
      else
        render action: :new
    end
  end

def edit
    @botao = 'edit'
    @pointingHour = PointingHour.find(params[:id])
    @pointingHour.data_inicio = @pointingHour.data_inicio.strftime("%d/%m/%Y")
    @pointingHour.data_fim = @pointingHour.data_fim.strftime("%d/%m/%Y")
    @serviceType = ServiceType.all
end

def update
      @pointingHour = PointingHour.find(params[:id])
      if @pointingHour.update_attributes(pointingHour_params)
        @serviceType = ServiceType.all
          redirect_to new_pointing_hour_path, notice: "Apontamento de Horas editado com sucesso."
      else
          redirect_to new_pointing_hour_path, :flash => { :error => "Erro ao editar o Apontamento de Horas!" }
      end
end

def destroy
      @pointingHour = PointingHour.find(params[:id])
      @pointingHour.destroy
      redirect_to new_pointing_hour_path, notice: "Apontamento de Horas removido com sucesso."
end

  private
  def pointingHour_params
    params.require(:pointing_hour).permit(:user_id, :date_hour_begin, :date_hour_begin, :service_type_id)
  end
end

