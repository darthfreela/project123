class UserPreferencesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @post_graduation = PostGraduation.find(current_user.post_graduation_id)
    @city = City.find(@user.city_id)

    @select_cities = City.all
  end

  def save_preferences
    @address = params[:address]
    @zip_code = params[:zip_code]
    @neighborhood = params[:neighborhood]
    @city_id = params[:city_id]
    @picture = params[:picture]
    File.open(Rails.root.join('app','assets', 'images', @picture.original_filename), 'wb') do |f|
        f.write(@picture.read)
     end
    redirect_to dashboard_index_path notice: @picture.original_filename
  end

  private


end
