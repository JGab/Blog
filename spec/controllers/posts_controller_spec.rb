require 'spec_helper'

describe PostsController do

	describe "index" do
		before(:each) do
			@posts = [mock_model(Post), mock_model(Post)]
			Post.stub(:all) {@posts}
		end


		#doit appeler Post.all
		it "should retrieve all the posts" do
			Post.should receive(:all).and_return(@posts)
			#appel de l'action
			get :index
		end
		

		#doit affecter la variable @post
		it "sould assign @post with all the posts" do
			get :index
			assigns(:posts).should == @posts
		end
	end


end
