require 'spec_helper'


describe "PostCreation" do

	describe "POST /posts/new" do

		it "on fill le formulaire + click : avoir le contenu sur la page suivante" do
			visit new_post_path
			page.should have_selector('form')
			fill_in('post[title]', :with => 'titre1')
			fill_in('post[body]', :with => 'body1')
			click_button 'Create Post'
			page.should have_content('titre1')
			page.should have_content('body1')
		end
	end
end
