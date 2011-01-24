require 'spec_helper'

describe "forum_categories/index.html.haml" do
  before(:each) do
    assign(:forum_categories, [
      stub_model(Forum::Category,
        :name => ""
      ),
      stub_model(Forum::Category,
        :name => ""
      )
    ])
  end

  it "renders a list of forum_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
