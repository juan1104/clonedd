class CommentsController < ApplicationController
    def create
    post = Comment.new(post_params)
    post.post_id = params[:post_id]
    post.save

    redirect_to  posts_path
    end
    
  def post_params
    params.require(:comment).permit( :content)
  end
    
end
