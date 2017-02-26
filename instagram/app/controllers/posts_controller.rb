class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@posts = Post.new
	end

	def create
		@post = Post.new(caption: post_params["caption"], image: post_params["image"])
		@post.save
	end

	private
	def post_params
    params.require(:post).permit(:caption, :image)
  end

end
