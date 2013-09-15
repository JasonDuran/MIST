require 'spec_helper'

describe "message_fields/edit" do
  before(:each) do
    @message_field = assign(:message_field, stub_model(MessageField,
      :message_id => 1,
      :projection => "MyString",
      :name => "MyString",
      :conceptual_field_id => 1
    ))
  end

  it "renders the edit message_field form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => message_fields_path(@message_field), :method => "post" do
      assert_select "input#message_field_message_id", :name => "message_field[message_id]"
      assert_select "input#message_field_projection", :name => "message_field[projection]"
      assert_select "input#message_field_name", :name => "message_field[name]"
      assert_select "input#message_field_conceptual_field_id", :name => "message_field[conceptual_field_id]"
    end
  end
end
