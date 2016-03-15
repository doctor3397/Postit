class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
		@comments = @post.comments
	end

    def new
    	@post = Post.new
    end

	def create
		post = Post.new(post_params)
		post.user = current_user
		#post.save!
		if post.save!
			flash[:notice] = "You've saved a post!"
			redirect_to posts_path
		else
			render :new
		end
	end

	#strong parameter 
    private
	def post_params
    	params.require(:post).permit(:title, :comment)
    end  
end