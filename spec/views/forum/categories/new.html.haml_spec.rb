require 'spec_helper'

describe "forum_categories/new.html.haml" do
  before(:each) do
    assign(:category, stub_model(Forum::Category,
      :name => ""
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forum_categories_path, :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
    end
  end
end
