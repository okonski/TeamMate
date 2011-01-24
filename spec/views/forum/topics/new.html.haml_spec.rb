require 'spec_helper'

describe "forum_topics/new.html.haml" do
  before(:each) do
    assign(:topic, stub_model(Forum::Topic,
      :category => nil,
      :title => "MyString",
      :author => nil
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forum_topics_path, :method => "post" do
      assert_select "input#topic_category", :name => "topic[category]"
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "input#topic_author", :name => "topic[author]"
    end
  end
end
