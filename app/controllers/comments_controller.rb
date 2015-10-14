class CommentsController < ApplicationController

 # before_action :set_advert, only: [:show, :edit, :update, :destroy] 
  before_action :logged_in?, only:[:destroy] 
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to(:root)
      puts 'Created Comment'
    else
      redirect_to(:root)
      puts 'failed to create comme'
    end
  end

  def destroy
    @comment = set_comment
    @comment.destroy
    redirect_to :root, notice: 'Comment was successfully destroyed.'
  end

  def comment_params
    params.require(:comment).permit(:id,:name,:message,:advert_id)
  end

  def set_comment
    Comment.find(params['id'])
  end

end
