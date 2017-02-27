class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show]

	def index
		@posts = Post.all
	end

	def new
		@posts = Post.new
	end

	def create
		@post = Post.new(caption: post_params["caption"], image: post_params["image"])
		@post.save
		redirect_to '/posts'
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
    @post= Post.find(params[:id])
    @post.update(post_params)
    redirect_to '/posts'
   end

    def destroy
	    @post = Post.find(params[:id])
	    @post.destroy
	    flash[:notice] = 'Post deleted successfully'
	    redirect_to '/posts'
  	end

	private
	def post_params
    params.require(:post).permit(:caption, :image)
  end

end
