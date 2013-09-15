require 'spec_helper'

describe "message_fields/index" do
  before(:each) do
    assign(:message_fields, [
      stub_model(MessageField,
        :message_id => 1,
        :projection => "Projection",
        :name => "Name",
        :conceptual_field_id => 2
      ),
      stub_model(MessageField,
        :message_id => 1,
        :projection => "Projection",
        :name => "Name",
        :conceptual_field_id => 2
      )
    ])
  end

  it "renders a list of message_fields" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Projection".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
