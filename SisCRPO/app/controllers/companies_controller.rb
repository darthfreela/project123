class CompaniesController < ApplicationController
  def new
    @company = Company.new
    @company_show = Company.all
    #MockObject simulndo retorno do banco para popular select funcao
    @select_cidades = Array.new
    @select_unidades = Array.new
    ar = [1,2,3,4,5]
    ar.each do |i|
      @select_cidades <<  "#{i}"
      @select_unidades <<  "#{i}"
    end
  end

  def create
    @company = Company.new(company_params)
    @company_show = Company.all
    #mok funcao
    @select_funcao = Array.new
    ar = [1,2,3,4,5]
    ar.each do |i|
      @select_funcao <<  "#{i}"
    end
    if @company.save
        redirect_to new_company_path , notice: "Companhia cadastrada com sucesso."
      else
        render action: :new
    end
  end

def edit
      @company = Company.find(params[:id])
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
    params.require(:company).permit(:nome, :ativo, :cidade, :unidade, :numero_servidor)
  end
end


