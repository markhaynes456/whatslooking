require 'rails_helper'

RSpec.describe "adverts/new", type: :view do
  before(:each) do
    assign(:advert, Advert.new(
      :email => "MyString",
      :title => "MyString",
      :body => "MyText",
      :category => "MyString"
    ))
  end

  it "renders new advert form" do
    render

    assert_select "form[action=?][method=?]", adverts_path, "post" do

      assert_select "input#advert_email[name=?]", "advert[email]"

      assert_select "input#advert_title[name=?]", "advert[title]"

      assert_select "textarea#advert_body[name=?]", "advert[body]"

      assert_select "input#advert_category[name=?]", "advert[category]"
    end
  end
end
