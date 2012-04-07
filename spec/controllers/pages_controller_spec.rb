require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_tile = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have right tile" do
      get 'home'
      response.should have_selector("title",
                      :content => @base_tile + " | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have right tile" do
      get 'contact'
      response.should have_selector("title",
                                    :content => @base_tile + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have right tile" do
      get 'about'
      response.should have_selector("title",
                                    :content => @base_tile + " | About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have right tile" do
      get 'help'
      response.should have_selector("title",
                                    :content => @base_tile + " | Help")
    end
  end
end
