require 'spec_helper'

describe "forum_topics/edit.html.haml" do
  before(:each) do
    @topic = assign(:topic, stub_model(Forum::Topic,
      :category => nil,
      :title => "MyString",
      :author => nil
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topic_path(@topic), :method => "post" do
      assert_select "input#topic_category", :name => "topic[category]"
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "input#topic_author", :name => "topic[author]"
    end
  end
end
