require "rails_helper"

RSpec.describe InformativeTextDailyBulletinsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/informative_text_daily_bulletins").to route_to("informative_text_daily_bulletins#index")
    end

    it "routes to #new" do
      expect(:get => "/informative_text_daily_bulletins/new").to route_to("informative_text_daily_bulletins#new")
    end

    it "routes to #show" do
      expect(:get => "/informative_text_daily_bulletins/1").to route_to("informative_text_daily_bulletins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/informative_text_daily_bulletins/1/edit").to route_to("informative_text_daily_bulletins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/informative_text_daily_bulletins").to route_to("informative_text_daily_bulletins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/informative_text_daily_bulletins/1").to route_to("informative_text_daily_bulletins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/informative_text_daily_bulletins/1").to route_to("informative_text_daily_bulletins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/informative_text_daily_bulletins/1").to route_to("informative_text_daily_bulletins#destroy", :id => "1")
    end

  end
end
