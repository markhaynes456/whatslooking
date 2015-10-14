require 'rails_helper'

RSpec.describe "adverts/edit", type: :view do
  before(:each) do
    @advert = assign(:advert, Advert.create!(
      :email => "MyString",
      :title => "MyString",
      :body => "MyText",
      :category => "MyString"
    ))
  end

  it "renders the edit advert form" do
    render

    assert_select "form[action=?][method=?]", advert_path(@advert), "post" do

      assert_select "input#advert_email[name=?]", "advert[email]"

      assert_select "input#advert_title[name=?]", "advert[title]"

      assert_select "textarea#advert_body[name=?]", "advert[body]"

      assert_select "input#advert_category[name=?]", "advert[category]"
    end
  end
end
