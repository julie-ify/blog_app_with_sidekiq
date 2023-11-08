class PostsController < ApplicationController
	before_action :current_user, except: :new
	def index
		@posts = @user.posts.all
	end

	def new
		@post = Post.new
	end

	#  helper method
	def current_user
		@user = User.find_by(id: params[:user_id])
	end

	def create
		@post = Post.new(post_params)
		@post.user = @user

		
		if(@post.save)
			FilterObscenity.new.perform(@post)
			redirect_to user_posts_path(@user)
		else
			render :new
		end
	end

	private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end
