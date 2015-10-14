require 'rails_helper'

RSpec.describe "adverts/show", type: :view do
  before(:each) do
    @advert = assign(:advert, Advert.create!(
      :email => "Email",
      :title => "Title",
      :body => "MyText",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Category/)
  end
end
