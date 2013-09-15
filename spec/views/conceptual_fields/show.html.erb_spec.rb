require 'spec_helper'

describe "conceptual_fields/show" do
  before(:each) do
    @conceptual_field = assign(:conceptual_field, stub_model(ConceptualField,
      :name => "Name",
      :datatype => "Datatype",
      :conceptual_entity_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Datatype/)
    rendered.should match(/1/)
  end
end
