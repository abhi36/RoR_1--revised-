require 'spec_helper'

describe "User Pages" do
  
  subject {page}
  
  describe "Signup Page" do
    before {visit signup_path}
    
    it "should have the content 'Signup'" do
      should have_content('Signup')
    end
    
    it "should have title 'Signup" do
      should have_selector('title', :text=>'Signup')
    end
  end
  
end
