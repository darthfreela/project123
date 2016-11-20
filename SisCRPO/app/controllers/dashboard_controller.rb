class DashboardController < ApplicationController

  def index
    # se o usuário corrente tem permissõa de RH
    # ele pode ver as notificações e acessá-las

    if(current_user.profile.permission_rh)
      # variavel global $variavel_global
      $notifications = Notification.where(status: 0).all
    end
  end
end
