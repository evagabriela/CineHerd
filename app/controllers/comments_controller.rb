class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(params[:comment])
    @comment.user_id = current_user.id
    @comment.parent_id = params[:post_id]
    @post.comments << @comment

    if @comment.save
      redirect_to post_path(@post)
    else
      flash[:notice] = "Something wasn't quite right, please comment again"
    end
  end
end
