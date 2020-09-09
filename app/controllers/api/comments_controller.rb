class Api::CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
   comment = current_user.comments.create(comment_params)
   render json: { message: 'Your comment was sent successfully'}
  end 
  
  private

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
