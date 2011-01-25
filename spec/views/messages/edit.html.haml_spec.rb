require 'spec_helper'

describe "messages/edit.html.haml" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :author => nil,
      :recipient => nil,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => message_path(@message), :method => "post" do
      assert_select "input#message_author", :name => "message[author]"
      assert_select "input#message_recipient", :name => "message[recipient]"
      assert_select "input#message_title", :name => "message[title]"
      assert_select "textarea#message_body", :name => "message[body]"
    end
  end
end
