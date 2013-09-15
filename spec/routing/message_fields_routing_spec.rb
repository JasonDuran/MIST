require "spec_helper"

describe MessageFieldsController do
  describe "routing" do

    it "routes to #index" do
      get("/message_fields").should route_to("message_fields#index")
    end

    it "routes to #new" do
      get("/message_fields/new").should route_to("message_fields#new")
    end

    it "routes to #show" do
      get("/message_fields/1").should route_to("message_fields#show", :id => "1")
    end

    it "routes to #edit" do
      get("/message_fields/1/edit").should route_to("message_fields#edit", :id => "1")
    end

    it "routes to #create" do
      post("/message_fields").should route_to("message_fields#create")
    end

    it "routes to #update" do
      put("/message_fields/1").should route_to("message_fields#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/message_fields/1").should route_to("message_fields#destroy", :id => "1")
    end

  end
end
