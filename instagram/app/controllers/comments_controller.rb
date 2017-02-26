class CommentsController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end

	def create
		@post = Post.find(params[:post_id])
  		@post.comments.create(comment_params)
  		redirect_to '/posts/' + params[:post_id]
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end

end