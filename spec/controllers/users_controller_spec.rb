require 'spec_helper'

describe UsersController do
  render_views

  before(:each) do
    @base_tile = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have right tile" do
      get 'new'
      response.should have_selector("title",
                      :content => @base_tile + " | Sign up")
    end
  end
end
