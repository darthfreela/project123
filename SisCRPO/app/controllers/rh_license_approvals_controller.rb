class RhLicenseApprovalsController < ApplicationController
  def new
        @rhLicenseapproval = RhLicenseApproval.new
        @rhLicenseapproval_show = RhLicenseApproval.all
    # Mok
     @select_status = Array.new
    ar = ["  ","Aprovar","Negar"]
    ar.each do |i|
      @select_status <<  "#{i}"
      end
    end

    def create
        @rhLicenseapproval = RhLicenseApproval.new(rhLicenseapproval_params)
        @rhLicenseapproval_show = RhLicenseApproval.all
    # Mok
    @select_status = Array.new
    ar = ["  ","Aprovar","Negar"]
    ar.each do |i|
      @select_status <<  "#{i}"
      end

        if @rhLicenseapproval.save
            redirect_to new_rh_license_approval_path , notice: "Aprovação Licença / Afastamento cadastrada com sucesso."
        else
            render action: :new
        end
    end

    def edit
        @rhLicenseapproval = RhLicenseApproval.find(params[:id])
        @rhLicenseapproval.data_inicio = @rhLicenseapproval.data_inicio.strftime("%d/%m/%Y")
        @rhLicenseapproval.data_termino = @rhLicenseapproval.data_termino.strftime("%d/%m/%Y")
    end

    def update
        @rhLicenseapproval = RhLicenseApproval.find(params[:id])
        if @rhLicenseapproval.update_attributes(rhLicenseapproval_params)
            redirect_to new_rh_license_approval_path, notice: "Aprovação Licença / Afastamento cadastrada com sucesso."
        else
            redirect_to new_rh_license_approval_path, :flash => { :error => "Erro ao editar Aprovação Licença / Afastamento!" }
        end
    end

    def destroy
        @rhLicenseapproval = RhLicenseApproval.find(params[:id])
        @rhLicenseapproval.destroy
        redirect_to new_rh_license_approval_path, notice: "Aprovação Licença / Afastamento removida com sucesso."
    end

    private
    def rhLicenseapproval_params
        params.require(:rh_license_approval).permit(:id_func, :nome_servidor, :posto_graduacao, :motivo, :funcao, :data_inicio, :data_termino, :status)
    end
end