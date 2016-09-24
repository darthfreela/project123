class ApprovalUnavailabilityAndRemovalsController < ApplicationController

 def new
       @licencas = Licenca.includes(:user)
       @toApprove = ApprovalUnavailabilityAndRemoval.new
 end

 def create
     @toApprove = ApprovalUnavailabilityAndRemoval.new(approval_unavibiality_and_removal_params)
     if @toApprove.save
       redirect_to approval_unavailability_and_removals_new_path
     else
       render action: :new
     end
end

def destroy
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
      @toApprove.destroy
      redirect_to redirect_to approval_unavailability_and_removals_new_path, notice: "toApprove removida com sucesso."
    end

    def edit
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
    end

    def update
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
      @toApprove.update_attributes(approval_unavibiality_and_removal_params)

      redirect_to redirect_to approval_unavailability_and_removals_new_path, notice: "toApprove editada com sucesso."
    end

    def aprovar
        Licenca.update(:id, :aprovado => 1)
    end

    private
    def approval_unavibiality_and_removal_params
      params.require(:opm).permit(:sigla, :name, :nome, :cidade, :descricao)
    end
end
