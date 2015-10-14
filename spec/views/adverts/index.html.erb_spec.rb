require 'rails_helper'

RSpec.describe "adverts/index", type: :view do
  before(:each) do
    assign(:adverts, [
      Advert.create!(
        :email => "Email",
        :title => "Title",
        :body => "MyText",
        :category => "Category"
      ),
      Advert.create!(
        :email => "Email",
        :title => "Title",
        :body => "MyText",
        :category => "Category"
      )
    ])
  end

  it "renders a list of adverts" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
