class ServiceTypesController < ApplicationController
  def new
      @tpServico = ServiceType.new
      @tpServico_show = ServiceType.all

      @select_funcao = Array.new
      array = [1, 2, 3, 4, 5]
      array.each do |i|
          @select_funcao <<  "#{i}"
      end

      @select_uniformes = Array.new
      (1..5).each do |i|
          @select_uniformes << "#{i}"
      end
  end

  def create
      @tpServico = ServiceType.new(tpServico_params)
      @tpServico_show = ServiceType.all

      @select_funcao = Array.new
      (1..5).each do |i|
        @select_funcao <<  "#{i}"
      end

      @select_uniformes = Array.new
      (1..5).each do |i|
        @select_uniformes <<  "#{i}"
      end

      if @tpServico.save
          redirect_to new_tipo_servico_path , notice: "Tipo de serviço cadastrado com sucesso."
      else
          render action: :new
      end
  end

  def edit
    @select_uniformes = Array.new
      (1..5).each do |i|
        @select_uniformes <<  "#{i}"
      end
    @select_funcao = Array.new
      (1..5).each do |i|
        @select_funcao <<  "#{i}"
      end
      @tpServico = ServiceType.find(params[:id])
  end

  def update
      @tpServico = ServiceType.find(params[:id])
      if @tpServico.update_attributes(tpServico_params)
          redirect_to new_tipo_servico_path, notice: "Tipos de serviço editado com sucesso."
      else
          redirect_to new_tipo_servico_path, :flash => { :error => "Erro ao editar o tipo de serviço!" }
      end
  end

  def destroy
      @tpServico = ServiceType.find(params[:id])
      @tpServico.destroy
      redirect_to new_tipo_servico_path, notice: "Tipos de serviço removido com sucesso."
  end

  private
  def tpServico_params
      params.require(:tipo_servico).permit(:sigla, :nome, :idFuncao, :idUniformes, :ativo)
  end
end
