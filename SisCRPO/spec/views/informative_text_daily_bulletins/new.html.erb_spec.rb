require 'rails_helper'

RSpec.describe "informative_text_daily_bulletins/new", type: :view do
  before(:each) do
    assign(:informative_text_daily_bulletin, InformativeTextDailyBulletin.new(
      :type_info => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new informative_text_daily_bulletin form" do
    render

    assert_select "form[action=?][method=?]", informative_text_daily_bulletins_path, "post" do

      assert_select "input#informative_text_daily_bulletin_type_info[name=?]", "informative_text_daily_bulletin[type_info]"

      assert_select "input#informative_text_daily_bulletin_description[name=?]", "informative_text_daily_bulletin[description]"
    end
  end
end
