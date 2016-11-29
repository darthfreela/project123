class SolicitationsController < ApplicationController
  def new
      @solicitation = Solicitation.new
      @solicitation_show = Solicitation.where(
        user_id: current_user.id).all

  end

  def create
    @solicitation = Solicitation.new(solicitation_params)

    @solicitation.user_id = current_user.id
    @solicitation.status = 0
    if @solicitation.type_solicitation != 2
        @solicitation.type_license = nil
        @solicitation.license_days = nil
    end

    @solicitation_show = Solicitation.where(user_id: current_user.id).all

    if @solicitation.save
      @approval_solicitation = ApprovalSolicitation.new
      @approval_solicitation.solicitation_id =  @solicitation.id
      @approval_solicitation.status = 0
      @approval_solicitation.manager_function_id =  @solicitation.user.function.manager_function_id
      @approval_solicitation.save

      #####################################################
      #cria uma notificação no banco de dados
      title_notification = "Aprovação de solicitação"

      @notification = Notification.new
      # id do usuário que gerou a notificação
      @notification.user_id = @solicitation.user_id
      # id da funçaõ que deve apareçer a notificação
      @notification.manager_function_id = @solicitation.user.function.manager_function_id
      # descrição da notificação
      @notification.description = "Usuário solicitante: " + current_user.name
      # titulo da notificação
      @notification.title_notification = title_notification
      # nome do controller que deve ir a notificação
      @notification.controller_description = "approval_solicitation"
      # ação que deve acionar no controller para a notificação
      @notification.action_description = "edit"
      # status (0- não visualizado, 1-visualizado)
      @notification.status = 0
      # id para mandar juntamente com a ação na url
      @notification.id_action_notification = @approval_solicitation.id

      # adiciona 48 horas ou 2 dias para a data atual
      @notification.date_expiration = Time.now + 2.days
      @notification.save


      redirect_to new_solicitation_path, notice: "Solicitação registrada com sucesso."
    else
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
    @solicitation = Solicitation.find(params[:id])

    # busca as aprovações que estão relacionadas a essa solicitação
    @solicitation_list_approved = ApprovalSolicitation.where(
      solicitation_id: @solicitation, status: [2,3]).all

      # se o id da função é igual quer dizer que o usuário superior não existe
      # somente mostrará a próxima função se o id da função for diferente
      if(@solicitation_list_approved.last.status != 3)
        if(@solicitation_list_approved.last.user.function.manager_function_id != @solicitation_list_approved.last.user.function.id)
          @last_function_to_approve = Function.where(
            id: @solicitation_list_approved.last.user.function.manager_function_id).first
        end
      end
  end

  def update
    @solicitation = Solicitation.find(params[:id])
    @solicitation.update_attributes(solicitation_params)

    redirect_to new_solicitation_path, notice: "Solicitação alterada com sucesso."
  end

  private
  def solicitation_params
      params.require(:solicitation).permit(:type_solicitation,
       :type_license ,:license_days, :date_begin, :date_end, :user_id, :description )
  end
end
