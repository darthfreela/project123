
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :check_new_or_reseted_user
  helper_method :is_first_access?

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  protected

  def set_locale
    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"

    I18n.locale =  get_client_locale

    logger.debug "* Locale set to '#{I18n.locale}'"
  end

  def get_client_locale
    extract_locale = extract_locale_from_accept_language_header

    available_locales = I18n.available_locales.map(&:to_s)

    locale_detected = available_locales.find { |i| i[/#{extract_locale}*/] }

    locale_detected ||= I18n.default_locale
  end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first.downcase
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit( :password, :password_confirmation, :current_password)}
  end

  #verifica se é primeiro acesso
  def is_first_access?
    is_first = User.find(current_user)
    if is_first.first_access == true
      redirect_to users_change_password_path
    end
  end

  #coloca a senha como id_func
  def check_new_or_reseted_user
    begin
      user = User.find(current_user.id)
      if user.first_access == true
        user.update(password: user.id_func)
        puts 'CHEEEE'
      end
    rescue => ex
      puts ex.message
    end
  end
end
