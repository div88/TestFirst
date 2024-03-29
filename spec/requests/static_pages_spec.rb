require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help ME'" do
      visit '/static_pages/help'
      page.should have_content('Help Me!!!')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Us" do
    it "shout have content 'About Us'" do
      visit "/static_pages/about"
      page.should have_content('About Us')
    end

    it "should have title 'About'" do
      visit "/static_pages/about"
      page.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | About")
    end

  end
=begin
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
=end
end
