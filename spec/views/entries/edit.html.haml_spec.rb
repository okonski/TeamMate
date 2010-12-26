require 'spec_helper'

describe "entries/edit.html.haml" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :title => "MyString",
      :content => "MyText",
      :author => nil,
      :category => nil
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entry_path(@entry), :method => "post" do
      assert_select "input#entry_title", :name => "entry[title]"
      assert_select "textarea#entry_content", :name => "entry[content]"
      assert_select "input#entry_author", :name => "entry[author]"
      assert_select "input#entry_category", :name => "entry[category]"
    end
  end
end
