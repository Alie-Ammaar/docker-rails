class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def index
		@posts = Post.all()
	end

	def edit 
		@post = Post.find(params[:id])
	end

	def show
		@post = Post.find(params[:id])		
	end
	
	def create
		@post = Post.new(the_params)
		@post.save
		
	end

	def destroy
		@post = Post.where(id: params[:id]).first
		@post.destroy 
	end

	def the_params
		params.require(:post).permit(:title, :desc)
	end
end
