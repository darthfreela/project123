class DashboardController < ApplicationController

  def index
    # se o usuário corrente tem permissõa de RH
    # ele pode ver as notificações e acessá-las

    if(current_user.profile.permission_rh)
      # variavel global $variavel_global
      $notifications = Notification.where(status: 0,
      controller_description: 'temporary_replacements').all
    end
    #pega as notificações se existe alguma notificação para esse usuário

    @notification_user = Notification.where(manager_function_id: current_user.function_id, status: 0).all
    if(@notification_user)
      @notification_user.each do |notify|
        if($notifications != nil)
          if(notify.in?($notifications))
          else
            $notifications.push(notify)
          end
        else
          $notifications = []
          $notifications.push(notify)
        end

      end
    end

  end

  def update_notification
    true
  end
end
