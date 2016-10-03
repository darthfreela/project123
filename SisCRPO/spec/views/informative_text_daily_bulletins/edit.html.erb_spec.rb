require 'rails_helper'

RSpec.describe "informative_text_daily_bulletins/edit", type: :view do
  before(:each) do
    @informative_text_daily_bulletin = assign(:informative_text_daily_bulletin, InformativeTextDailyBulletin.create!(
      :type_info => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit informative_text_daily_bulletin form" do
    render

    assert_select "form[action=?][method=?]", informative_text_daily_bulletin_path(@informative_text_daily_bulletin), "post" do

      assert_select "input#informative_text_daily_bulletin_type_info[name=?]", "informative_text_daily_bulletin[type_info]"

      assert_select "input#informative_text_daily_bulletin_description[name=?]", "informative_text_daily_bulletin[description]"
    end
  end
end
