require 'spec_helper'

describe "servers/index.html.haml" do
  before(:each) do
    assign(:servers, [
      stub_model(Server,
        :title => "Title",
        :address => "Address"
      ),
      stub_model(Server,
        :title => "Title",
        :address => "Address"
      )
    ])
  end

  it "renders a list of servers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
