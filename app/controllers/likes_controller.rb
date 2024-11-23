class LikesController < ApplicationController
    
  def create
    post = Post.find(params[:post_id])
    post.likes.create(user: current_user)
    redirect_to post_path(post)  
  end
  
  def destroy
    like = Like.find_by(post_id: params[:post_id], user: current_user)
    like.destroy if like
    redirect_to post_path(params[:post_id])  
  end
end
