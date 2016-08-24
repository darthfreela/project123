class GpmsController < ApplicationController
  def new
      @gpm = Gpm.new
      @gpm_show = Gpm.all
  end

    def create
      @gpm = Gpm.new(gpm_params)
      @gpm_show = Gpm.all

      if @gpm.save
        redirect_to new_gpm_path, notice: "Gpm cadastrado com sucesso."
      else
        render action: :new
      end
    end

    def destroy
      @gpm = Gpm.find(params[:id])
      @gpm.destroy
      redirect_to new_gpm_path, notice: "Gpm removido com sucesso."
    end

    def edit
      @gpm = Gpm.find(params[:id])
    end

    def update
      @gpm = Gpm.find(params[:id])
      @gpm.update_attributes(opm_params)

      redirect_to new_gpm_path, notice: "Gpm editado com sucesso."
    end
end
