class CommentsController < ApplicationController
  def create
  	@new_comment = Comment.create(params.require(:comment).permit(
  		:commentable_id, :commentable_type, :content, :member_id))
  end
end
