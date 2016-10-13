class ServiceTypesController < ApplicationController
  def new
      @tpServico = ServiceType.new
      @tpServico_show = ServiceType.all

      @select_funcao = Function.all
      @select_uniformes = Uniform.all
  end

  def create
      @tpServico = ServiceType.new(tpServico_params)
      @tpServico_show = ServiceType.all

      @select_funcao = Function.all
      @select_uniformes = Uniform.all

      if @tpServico.save
          redirect_to new_service_type_path , notice: "Tipo de serviço cadastrado com sucesso."
      else
          render action: :new
      end
  end

  def edit
    @select_funcao = Function.all
      @select_uniformes = Uniform.all
      @tpServico = ServiceType.find(params[:id])
  end

  def update
      @tpServico = ServiceType.find(params[:id])
      if @tpServico.update_attributes(tpServico_params)
          redirect_to new_service_type_path, notice: "Tipos de serviço editado com sucesso."
      else
          redirect_to new_service_type_path, :flash => { :error => "Erro ao editar o tipo de serviço!" }
      end
  end

  def destroy
      @tpServico = ServiceType.find(params[:id])
      @tpServico.destroy
      redirect_to new_service_type_path, notice: "Tipos de serviço removido com sucesso."
  end

  private
  def tpServico_params
      params.require(:service_type).permit(:initials, :name, :function_id, :uniform_id, :actived)
  end
end
