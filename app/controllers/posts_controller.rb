class PostsController < ApplicationController
	load_and_authorize_resource

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "Post has been successfully added"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Something went wrong"
			render :new
		end
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
		@comment = Comment.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			flash[:notice] = "Post has been successfully edited"
			redirect_to post_path(@post)
		else
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = "Post has been deleted"
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
