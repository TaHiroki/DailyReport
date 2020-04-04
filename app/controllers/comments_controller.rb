class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.comment = params[:comment]
    @comment.report_id = session[:report_id]
    @comment.user_id = @current_user.id
    if @comment.save
      @report_id = session[:report_id]
      session[:report_id] = nil
      flash[:notice] = "コメントを作成しました"
      redirect_to("/reports/show/#{@report_id}")
    else
      render("comments/new")
    end
  end

end
