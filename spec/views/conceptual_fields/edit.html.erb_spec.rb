require 'spec_helper'

describe "conceptual_fields/edit" do
  before(:each) do
    @conceptual_field = assign(:conceptual_field, stub_model(ConceptualField,
      :name => "MyString",
      :datatype => "MyString",
      :conceptual_entity_id => 1
    ))
  end

  it "renders the edit conceptual_field form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conceptual_fields_path(@conceptual_field), :method => "post" do
      assert_select "input#conceptual_field_name", :name => "conceptual_field[name]"
      assert_select "input#conceptual_field_datatype", :name => "conceptual_field[datatype]"
      assert_select "input#conceptual_field_conceptual_entity_id", :name => "conceptual_field[conceptual_entity_id]"
    end
  end
end
