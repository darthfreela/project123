class PointingHoursController < ApplicationController
def new
    @pointingHour = PointingHour.new
    @pointingHour_show = PointingHour.all
    
  end

  def create
    @pointingHour = PointingHour.new(pointingHour_params)
    @pointingHour_show = PointingHour.all
    if @pointingHour.save
      @user = User.new(@user.id, :idFunc)
        redirect_to pointing_hours_new_path , notice: "Apontamento de Horas cadastrado com sucesso."
      else
        render action: :new
    end
  end

def edit
    @pointingHour = PointingHour.find(params[:id])
end

def update
      @pointingHour = PointingHour.find(params[:id])
      if @pointingHour.update_attributes(pointingHour_params)
          @user = User.new(@user.id, :idFunc)
           redirect_to pointing_hours_new_path, notice: "Apontamento de Horas editado com sucesso."
      else

            redirect_to pointing_hours_new_path, :flash => { :error => "Erro ao editar o Apontamento de Horas!" }
      end
end

def destroy
      @pointingHour = PointingHour.find(params[:id])
      @pointingHour.destroy
      redirect_to pointing_hours_new_path, notice: "Apontamento de Horas removido com sucesso."
end

  private
  def pointingHour_params
    params.require(:pointingHour).permit(:idfunc, :data_inicio, :hora_inicio, :data_fim, :hora_fim)
  end
end