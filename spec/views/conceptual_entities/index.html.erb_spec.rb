require 'spec_helper'

describe "conceptual_entities/index" do
  before(:each) do
    assign(:conceptual_entities, [
      stub_model(ConceptualEntity,
        :name => "Name"
      ),
      stub_model(ConceptualEntity,
        :name => "Name"
      )
    ])
  end

  it "renders a list of conceptual_entities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
