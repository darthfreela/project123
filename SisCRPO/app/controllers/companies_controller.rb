class CompaniesController < ApplicationController
  def new
    @companie = Companie.new
    @companie_show = Companie.all

    @select_opms = Opm.all

    @select_cities = City.where(:uf => "RS")
  end

  def create
    @companie = Companie.new(companie_params)
    @companie_show = Companie.all

    @select_cities = City.where(:uf => "RS")
    if @companie.save
      redirect_to new_company_path , notice: "Companhia cadastrada com sucesso."
    else
      render action: :new
    end
  end

  def edit
    @botao = 'edit'
    @companie = Companie.find(params[:id])
    @select_opms = Opm.all
    @select_cities = City.where(:uf => "RS")
  end

  def update
    @companie = Companie.find(params[:id])
    if @companie.update_attributes(companie_params)
      redirect_to new_company_path, notice: "Companhia editada com sucesso."
    else
      redirect_to new_company_path, :flash => { :error => "Erro ao editar o Companhia!" }
    end
  end

  def destroy
    @companie = Companie.find(params[:id])
    @companie.destroy
    redirect_to new_company_path, notice: "Companhia removida com sucesso."
  end

  private
  def companie_params
    params.require(:companie).permit(:name, :actived, :city_id, :opm_id)
  end
end
