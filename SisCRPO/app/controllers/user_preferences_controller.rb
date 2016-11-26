class UserPreferencesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @post_graduation = PostGraduation.find(current_user.post_graduation_id)
    @city = City.find(@user.city_id)
    @select_cities = City.all
  end

  def save_preferences
    @user = User.find(current_user.id)
    @address = params[:address]
    @zip_code = params[:zip_code]
    @neighborhood = params[:neighborhood]
    @city_id = params[:city_id]
    @picture = params[:picture]
    File.open(Rails.root.join('app','assets', 'images', @user.name + "_img_profile.jpg"), 'wb') do |f|
        f.write(@picture.read)
    end

    if save_params(@address, @zip_code, @neighborhood, @city_id)
        redirect_to dashboard_index_path notice: "Alterações salvas com sucesso!"
    end
  end

  private
  def save_params(address, zip_code, neighborhood, city_id)
    User.update(current_user.id, :address => address,
                                             :zip_code => zip_code,
                                             :neighborhood => neighborhood,
                                             :city_id => city_id,
                                             :image_path => "/assets/" +  @user.name + "_img_profile.jpg")
  end

end
