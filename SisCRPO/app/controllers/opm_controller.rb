class OpmController < ApplicationController
  def new
    @opm = Opm.new
  end

  def create
    @opm = Opm.new(opm_params)
    if @opm.save
      redirect_to opm_path, notice: "Opm cadastrada com sucesso!"
    else
      render action: :new
    end
  end

  private
  def opm_params
    params.require(:opms).permit(:sigla, :nome, :cidade, :descricao)
  end

end
