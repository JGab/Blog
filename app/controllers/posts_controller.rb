class PostsController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

	def new
		 @post = Post.new
    respond_to do |format|
      format.html # new.html.erb
    end
	end

	def create
		@post = Post.new(params[:post])
		@post.save
		respond_to do |format|
			format.html { redirect_to posts_path }
		end
	end

end
