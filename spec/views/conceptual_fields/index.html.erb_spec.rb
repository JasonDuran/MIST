require 'spec_helper'

describe "conceptual_fields/index" do
  before(:each) do
    assign(:conceptual_fields, [
      stub_model(ConceptualField,
        :name => "Name",
        :datatype => "Datatype",
        :conceptual_entity_id => 1
      ),
      stub_model(ConceptualField,
        :name => "Name",
        :datatype => "Datatype",
        :conceptual_entity_id => 1
      )
    ])
  end

  it "renders a list of conceptual_fields" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Datatype".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
