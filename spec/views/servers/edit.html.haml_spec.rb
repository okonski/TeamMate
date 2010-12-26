require 'spec_helper'

describe "servers/edit.html.haml" do
  before(:each) do
    @server = assign(:server, stub_model(Server,
      :title => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => server_path(@server), :method => "post" do
      assert_select "input#server_title", :name => "server[title]"
      assert_select "input#server_address", :name => "server[address]"
    end
  end
end
