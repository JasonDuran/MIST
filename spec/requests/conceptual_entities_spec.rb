require 'spec_helper'

describe "ConceptualEntities" do
  describe "GET /conceptual_entities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get conceptual_entities_path
      response.status.should be(200)
    end
  end
end
