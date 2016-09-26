class ApprovalUnavailabilityAndRemovalsController < ApplicationController

 def new
       @requests = Licenca.all
       @toApprove = ApprovalUnavailabilityAndRemoval.new
 end

 def create
     @toApprove = ApprovalUnavailabilityAndRemoval.new(approval_unavibiality_and_removal_params)
     if @toApprove.save
       redirect_to new_approval_unavailability_and_removal_path
     else
       render action: :new
     end
end

def destroy
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
      @toApprove.destroy
      redirect_to new_approval_unavailability_and_removal_path, notice: "toApprove removida com sucesso."
    end

    def view_request
      @toApprove = ApprovalUnavailabilityAndRemoval.new
      @request = Licenca.find(params[:id])
      @user = User.find(4)#@licenca.idFunc)
      @pg = Postograduacao.find(7)#@user.postograduacao_id)
      @funcao = Function.find(1)#@user.function_id)
    end

    def edit
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
    end

    def update
      @toApprove = ApprovalUnavailabilityAndRemoval.find(params[:id])
      @toApprove.update_attributes(approval_unavibiality_and_removal_params)

      redirect_to new_approval_unavailability_and_removal_path, notice: "toApprove editada com sucesso."
    end

    def approve
        Licenca.update(:id, :aprovado => 1)
        redirect_to new_approval_unavailability_and_removal_path
    end

    private
    def approval_unavibiality_and_removal_params
      params.require(:opm).permit(:sigla, :name, :nome, :cidade, :descricao)
    end
end
