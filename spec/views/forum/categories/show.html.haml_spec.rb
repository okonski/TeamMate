require 'spec_helper'

describe "forum_categories/show.html.haml" do
  before(:each) do
    @category = assign(:category, stub_model(Forum::Category,
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
