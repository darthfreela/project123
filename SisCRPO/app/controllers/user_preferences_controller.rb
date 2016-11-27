require 'digest/sha1'

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
    if params[:picture] != nil
        @picture = params[:picture]
        @picture_string = "#{@user.name} #{@user.id} #{@user.war_name}"
        @picture_hash = Digest::SHA1.hexdigest @picture_string

        File.open(Rails.root.join('app','assets', 'images', 'img_profiles',"img_profile_#{@picture_hash}.jpg"), 'wb') do |f|
            f.write(@picture.read)
        end
        save_image_profile
    end


    if save_params(@address, @zip_code, @neighborhood, @city_id)
        redirect_to dashboard_index_path notice: "Alterações salvas com sucesso!"
    else
        redirect_to user_preferences_index_path notice: "Não foi possível editar as preferencias de usuário."
    end
  end

  private
  def save_params(address, zip_code, neighborhood, city_id)
    flag = true
    if address != ""
        flag = false if not User.update(current_user.id, :address => address)
    end
    if zip_code != ""
         flag = false if not User.update(current_user.id, :zip_code => zip_code)
    end
    if neighborhood != ""
         flag = false if not User.update(current_user.id, :neighborhood => neighborhood)
    end
    if city_id != ""
         flag = false if not User.update(current_user.id, :city_id => city_id)
    end
    return flag
  end

  def save_image_profile
        User.update(current_user.id, :image_path => "/assets/img_profiles/" +  "img_profile_#{@picture_hash}.jpg")
  end
end
