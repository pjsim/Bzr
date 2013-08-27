require "spec_helper"

describe CounteroffersController do
  describe "routing" do

    it "routes to #index" do
      get("/counteroffers").should route_to("counteroffers#index")
    end

    it "routes to #new" do
      get("/counteroffers/new").should route_to("counteroffers#new")
    end

    it "routes to #show" do
      get("/counteroffers/1").should route_to("counteroffers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/counteroffers/1/edit").should route_to("counteroffers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/counteroffers").should route_to("counteroffers#create")
    end

    it "routes to #update" do
      put("/counteroffers/1").should route_to("counteroffers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/counteroffers/1").should route_to("counteroffers#destroy", :id => "1")
    end

  end
end
