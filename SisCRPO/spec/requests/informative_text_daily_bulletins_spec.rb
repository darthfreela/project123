require 'rails_helper'

RSpec.describe "InformativeTextDailyBulletins", type: :request do
  describe "GET /informative_text_daily_bulletins" do
    it "works! (now write some real specs)" do
      get informative_text_daily_bulletins_path
      expect(response).to have_http_status(200)
    end
  end
end
