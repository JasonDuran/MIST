require 'spec_helper'

describe "conceptual_entities/show" do
  before(:each) do
    @conceptual_entity = assign(:conceptual_entity, stub_model(ConceptualEntity,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
