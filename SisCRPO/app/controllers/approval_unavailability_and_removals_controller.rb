class ApprovalUnavailabilityAndRemovalsController < ApplicationController

 def new
       @requests = RequestDispense.joins(:user => [:postograduacao, :function])
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
      #Licenca.update(:id, :approved => 2)
      @toApprove = ApprovalUnavailabilityAndRemoval.new
      @request = RequestDispense.find(params[:id])
      @user = User.find(@request.user_id)
      @pg = Postograduacao.find(@user.postograduacao_id)#@user.postograduacao_id)
      @funcao = Function.find(@user.function_id)
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
<<<<<<< HEAD
        #Licenca.update(:id, :approved => 2)
=======
        RequestDispense.update(RequestDispense.find(params[:id]), :approved => 1)
>>>>>>> a3eef34a7511e3a9d216b755545513e3eba8ef5d
        redirect_to new_approval_unavailability_and_removal_path
    end

    private
    def approval_unavibiality_and_removal_params
      params.require(:opm).permit(:sigla, :name, :nome, :cidade, :descricao)
    end
end