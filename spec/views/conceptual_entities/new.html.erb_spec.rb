require 'spec_helper'

describe "conceptual_entities/new" do
  before(:each) do
    assign(:conceptual_entity, stub_model(ConceptualEntity,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new conceptual_entity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conceptual_entities_path, :method => "post" do
      assert_select "input#conceptual_entity_name", :name => "conceptual_entity[name]"
    end
  end
end
