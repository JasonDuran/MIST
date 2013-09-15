require 'spec_helper'

describe "standards/edit" do
  before(:each) do
    @standard = assign(:standard, stub_model(Standard,
      :name => "MyString",
      :version => 1.5
    ))
  end

  it "renders the edit standard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => standards_path(@standard), :method => "post" do
      assert_select "input#standard_name", :name => "standard[name]"
      assert_select "input#standard_version", :name => "standard[version]"
    end
  end
end
