require 'spec_helper'


describe "PostCreation" do

  describe "GET /posts/new" do
    it "il y a un formulaire qui permet de remplir le titre et le corps, et un boutton" do
      visit new_post_path
		page.should have_field('post[title]')
		page.should have_field('post[body]')
		page.should have_button('Create Post')
	  end	

		it "le boutton cree un nouveau post et ramene a la liste des posts" do
			visit new_post_path
			click_button 'Create Post'
			current_path.should == posts_path
		end	
		


end
