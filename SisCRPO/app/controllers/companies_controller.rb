class CompaniesController < ApplicationController
  def new
    @company = Company.new
    @company_show = Company.all
    #mok Cidade e Unidade
    @select_cidades = Array.new
    ar = ["Caxias do Sul","Vacaria","Cidade3","Cidade4","Cidade5"]
    ar.each do |i|
      @select_cidades <<  "#{i}"
    end
    #mok Cidade e Unidade
    @select_unidades = Array.new
    ar = ["Parque Getúlio Vargas","Centro","Cruseiro","Kayser"]
    ar.each do |i|
      @select_unidades <<  "#{i}"
    end
  end

  def create
    @company = Company.new(company_params)
    @company_show = Company.all
    #mok Cidade e Unidade
    @select_cidades = Array.new
    ar = ["Caxias do Sul","Vacaria","Cidade3","Cidade4","Cidade5"]
    ar.each do |i|
      @select_cidades <<  "#{i}"
    end
    #mok Cidade e Unidade
    @select_unidades = Array.new
    ar = ["Parque Getúlio Vargas","Centro","Cruseiro","Kayser"]
    ar.each do |i|
      @select_unidades <<  "#{i}"
    end
    if @company.save
        redirect_to new_company_path , notice: "Companhia cadastrada com sucesso."
      else
        render action: :new
    end
  end

def edit
    @company = Company.find(params[:id])
    #mok Cidade e Unidade
    @select_cidades = Array.new
    ar = ["Caxias do Sul","Vacaria","Cidade3","Cidade4","Cidade5"]
    ar.each do |i|
      @select_cidades <<  "#{i}"
    end
    #mok Cidade e Unidade
    @select_unidades = Array.new
    ar = ["Parque Getúlio Vargas","Centro","Cruseiro","Kayser"]
    ar.each do |i|
      @select_unidades <<  "#{i}"
    end
end

def update
      @company = Company.find(params[:id])
      if @company.update_attributes(company_params)
           redirect_to new_company_path, notice: "Companhia editada com sucesso."
      else

            redirect_to new_company_path, :flash => { :error => "Erro ao editar o Companhia!" }
      end
end

def destroy
      @company = Company.find(params[:id])
      @company.destroy
      redirect_to new_company_path, notice: "Companhia removida com sucesso."
end

  private
  def company_params
    params.require(:company).permit(:nome, :ativo, :cidade, :unidade)
  end
end


