require "spec_helper"

describe ConceptualEntitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/conceptual_entities").should route_to("conceptual_entities#index")
    end

    it "routes to #new" do
      get("/conceptual_entities/new").should route_to("conceptual_entities#new")
    end

    it "routes to #show" do
      get("/conceptual_entities/1").should route_to("conceptual_entities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conceptual_entities/1/edit").should route_to("conceptual_entities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conceptual_entities").should route_to("conceptual_entities#create")
    end

    it "routes to #update" do
      put("/conceptual_entities/1").should route_to("conceptual_entities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conceptual_entities/1").should route_to("conceptual_entities#destroy", :id => "1")
    end

  end
end
