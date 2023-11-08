class PostsController < ApplicationController
	def index
		@user = User.find_by(id: params[:user_id])
		@posts = @user.posts.all
	end

	def new
		@post = Post.new
	end
end
