require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :gender => 1,
      :country => "MyString",
      :age => 1,
      :profile => nil,
      :hardware => nil,
      :signature => "MyText"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_gender", :name => "user[gender]"
      assert_select "input#user_country", :name => "user[country]"
      assert_select "input#user_age", :name => "user[age]"
      assert_select "input#user_profile", :name => "user[profile]"
      assert_select "input#user_hardware", :name => "user[hardware]"
      assert_select "textarea#user_signature", :name => "user[signature]"
    end
  end
end
