class CommentsController < ApplicationController
	load_and_authorize_resource

	def index
	end

	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
		respond_to do |format|
			format.html
			format.js
		end
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		@comment.user = current_user
		@comments = current_user.comments
		respond_to do |format|
			if @comment.save
				flash[:notice] = "Comment successfully added"
				format.html {redirect_to post_path(@post)}
				format.js
			else
				flash[:alert] = "Something went wrong"
				format.html
				format.js
			end
		end
	end

	def show
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end

	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		
	end

	def update
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		if @comment.update(comment_params)
			flash[:notice] = "Comment successfully edited"
			redirect_to post_path(@post)
		else
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		flash[:notice] = "Comment successfully deleted"
		redirect_to post_path(@post)
	end

	private 

	def comment_params
		params.require(:comment).permit(:body)
	end
end