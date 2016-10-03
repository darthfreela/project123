require 'rails_helper'

RSpec.describe "informative_text_daily_bulletins/show", type: :view do
  before(:each) do
    @informative_text_daily_bulletin = assign(:informative_text_daily_bulletin, InformativeTextDailyBulletin.create!(
      :type_info => "Type Info",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Info/)
    expect(rendered).to match(/Description/)
  end
end
