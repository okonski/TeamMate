require 'spec_helper'

describe "forum_topics/index.html.haml" do
  before(:each) do
    assign(:forum_topics, [
      stub_model(Forum::Topic,
        :category => nil,
        :title => "Title",
        :author => nil
      ),
      stub_model(Forum::Topic,
        :category => nil,
        :title => "Title",
        :author => nil
      )
    ])
  end

  it "renders a list of forum_topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
