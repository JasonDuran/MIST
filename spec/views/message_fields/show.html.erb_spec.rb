require 'spec_helper'

describe "message_fields/show" do
  before(:each) do
    @message_field = assign(:message_field, stub_model(MessageField,
      :message_id => 1,
      :projection => "Projection",
      :name => "Name",
      :conceptual_field_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Projection/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
  end
end
