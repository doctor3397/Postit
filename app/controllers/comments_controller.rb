class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(params.require(:comment).permit(:content))
		@comment.user = current_user

		if @comment.save
			flash[:notice] = "You've saved a comment!"
			redirect_to post_path(@post)
		else
			render 'posts/show'
		end
	end
end 