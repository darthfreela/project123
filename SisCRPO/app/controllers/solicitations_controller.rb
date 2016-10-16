class SolicitationsController < ApplicationController
  def new
      @solicitation = Solicitation.new
      @solicitation_show = Solicitation.all
      # retorno do banco para popular select para usuário
      @select_users = User.all
  end

  def create
    puts ("ENTROU aqui .............................................................................")
    # puts :user_id +" <---"
    @solicitation = Solicitation.new(solicitation_params)
    @solicitation_show = Solicitation.all

    puts "ENTROU aqui ............................................................................."
    if @solicitation.save
      redirect_to new_solicitation_path, notice: "Solicitação registrada com sucesso."
    else
      # mostra os erros no terminal ** muito util saporra
      puts "Erro aqui ............................................................................."
      Rails.logger.info(@solicitation.errors.messages.inspect)
      render action: :new
    end
  end

  def destroy
    @solicitation = Solicitation.find(params[:id])
    @solicitation.destroy
    redirect_to new_solicitation_path, notice: "Solicitação excluída com sucesso."
  end

  def edit
    @botao = 'edit'
    @select_users = User.all
    @solicitation = Solicitation.find(params[:id])
  end

  def update
    @select_users = User.all
    @solicitation = Solicitation.find(params[:id])
    @solicitation.update_attributes(solicitation_params)

    redirect_to new_solicitation_path, notice: "Solicitação alterada com sucesso."
  end

  private
  def solicitation_params
      puts :user_id
      params.require(:solicitation).permit(:type_solicitation,
       :type_license ,:license_days, :date_begin, :date_end, :user_id, :description )
  end
end
