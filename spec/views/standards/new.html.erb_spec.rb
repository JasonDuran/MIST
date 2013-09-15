require 'spec_helper'

describe "standards/new" do
  before(:each) do
    assign(:standard, stub_model(Standard,
      :name => "MyString",
      :version => 1.5
    ).as_new_record)
  end

  it "renders new standard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => standards_path, :method => "post" do
      assert_select "input#standard_name", :name => "standard[name]"
      assert_select "input#standard_version", :name => "standard[version]"
    end
  end
end
