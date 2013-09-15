require "spec_helper"

describe ConceptualFieldsController do
  describe "routing" do

    it "routes to #index" do
      get("/conceptual_fields").should route_to("conceptual_fields#index")
    end

    it "routes to #new" do
      get("/conceptual_fields/new").should route_to("conceptual_fields#new")
    end

    it "routes to #show" do
      get("/conceptual_fields/1").should route_to("conceptual_fields#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conceptual_fields/1/edit").should route_to("conceptual_fields#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conceptual_fields").should route_to("conceptual_fields#create")
    end

    it "routes to #update" do
      put("/conceptual_fields/1").should route_to("conceptual_fields#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conceptual_fields/1").should route_to("conceptual_fields#destroy", :id => "1")
    end

  end
end
