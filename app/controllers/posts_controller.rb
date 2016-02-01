class PostsController < ApplicationController
	def new
		@post=Post.new
		@author=Author.new
	end

	def show

	end

	def create

		new_post=Post.new(post_params)
    	new_post.save ? (redirect_to post_path(new_post)) : (render :new)
    	#binding.pry
	end

	private

		def post_params
			params.require(:post).permit(:title, :content, author_attributes:[:name])
		end
end
