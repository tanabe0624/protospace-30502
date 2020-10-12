class CommentsController < ApplicationController

  def create
    
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      #9,10行目で定義してあげないと、prototypesのshowのviewに飛んだ時に、
      #@prototypeと＠commentsが使えない
      render "prototypes/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
