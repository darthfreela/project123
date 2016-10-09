class PelotaosController < ApplicationController
  def new
    @pelotao = Pelotao.new
      @pelotao_show = Pelotao.all
      #mock de cidades simulando retorno do banco
      @select_gpms = Array.new
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_cidades <<  "#{i}"
          @select_gpms <<  "#{i}"
      end
  end

  def create
      @pelotao = Pelotao.new(pelotao_params)
      @pelotao_show = Pelotao.all

      #mock de cidades simulando retorno do banco
      @select_gpms = Array.new
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_gpms <<  "#{i}"
          @select_cidades <<  "#{i}"
      end
       if @pelotao.save
        redirect_to new_pelotao_path, notice: "Pelotão cadastrado com sucesso."
      else
        render action: :new
      end
end

   def destroy
      @pelotao = Pelotao.find(params[:id])
      @pelotao.destroy
      redirect_to new_pelotao_path, notice: "Peotão removido com sucesso."
    end

  def edit
    @pelotao = Pelotao.find(params[:id])
  end

  def update
      @pelotao = Pelotao.find(params[:id])
      @pelotao.update_attributes(pelotao_params)

      redirect_to new_pelotao_path, notice: "Pelotão editado com sucesso."
  end

 private
    def pelotao_params
      params.require(:pelotao).permit(:nome, :gpm_id, :cidade)
    end
end
