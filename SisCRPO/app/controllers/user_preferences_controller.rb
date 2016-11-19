class UserPreferencesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @post_graduation = PostGraduation.find(current_user.post_graduation_id)
    @city = City.find(@user.city_id)

    @select_cities = City.all



  end

  private


end
