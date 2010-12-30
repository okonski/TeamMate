require 'spec_helper'

describe "comments/edit.html.haml" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :body => "MyText",
      :author => nil,
      :entry => nil
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comment_path(@comment), :method => "post" do
      assert_select "textarea#comment_body", :name => "comment[body]"
      assert_select "input#comment_author", :name => "comment[author]"
      assert_select "input#comment_entry", :name => "comment[entry]"
    end
  end
end
