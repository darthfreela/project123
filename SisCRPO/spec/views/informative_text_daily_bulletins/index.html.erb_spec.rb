require 'rails_helper'

RSpec.describe "informative_text_daily_bulletins/index", type: :view do
  before(:each) do
    assign(:informative_text_daily_bulletins, [
      InformativeTextDailyBulletin.create!(
        :type_info => "Type Info",
        :description => "Description"
      ),
      InformativeTextDailyBulletin.create!(
        :type_info => "Type Info",
        :description => "Description"
      )
    ])
  end

  it "renders a list of informative_text_daily_bulletins" do
    render
    assert_select "tr>td", :text => "Type Info".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
