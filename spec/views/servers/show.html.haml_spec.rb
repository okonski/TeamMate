require 'spec_helper'

describe "servers/show.html.haml" do
  before(:each) do
    @server = assign(:server, stub_model(Server,
      :title => "Title",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
  end
end
