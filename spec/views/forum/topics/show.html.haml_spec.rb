require 'spec_helper'

describe "forum_topics/show.html.haml" do
  before(:each) do
    @topic = assign(:topic, stub_model(Forum::Topic,
      :category => nil,
      :title => "Title",
      :author => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
