require 'spec_helper'

describe "conceptual_entities/edit" do
  before(:each) do
    @conceptual_entity = assign(:conceptual_entity, stub_model(ConceptualEntity,
      :name => "MyString"
    ))
  end

  it "renders the edit conceptual_entity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conceptual_entities_path(@conceptual_entity), :method => "post" do
      assert_select "input#conceptual_entity_name", :name => "conceptual_entity[name]"
    end
  end
end
