class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		params_create = params.require(:post).permit(:title, :content, :image)
		post = Post.new(params_create) 
		post.save

		redirect_to posts_path
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		params_update = params.require(:post).permit(:title, :content, :image)
		@post.update(params_update)

		redirect_to posts_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy!

		redirect_to posts_path
	end

end
