require 'spec_helper'

describe "Static pages" do
  #describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    #end
  #end
  
  subject{ page }
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit home_path
      should have_content('Sample App')  # No page variable [supplied by Capybara Gem] since its been declared at top 
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About')
    end
  end
  
  describe "Contact Page" do
    
    before{ visit contact_path }  # Eleminating duplicate entries for visit command-line with function "before"
    
    it "should have the content 'Contact'" do
      #visit contact_path
      page.should have_content('Contact')
    end
    it "should have the title 'Contact'" do
      #visit contact_path
      page.should have_selector('title', :text=>'Contact')
    end
  end
  
  
end
