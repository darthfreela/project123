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
    File.open(Rails.root.join('app','assets', 'images', @user.name + "_img_profile"), 'wb') do |f|
        f.write(@picture.read)
     end
    redirect_to dashboard_index_path notice: "Alterações salvas com sucesso!"
  end

  private
  def save_params(address, zip_code, neigborhood, city_id, picture)
    User.update(current_user, :address => address,
                                             :zip_code => zip_code,
                                             :neigborhood => neigborhood,
                                             :city_id => city_id,
                                             :image_path => Rails.root.join('app','assets', 'images', 'img_profiles', @user.name + "_img_profile"))
  end

end
