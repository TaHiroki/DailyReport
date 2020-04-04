class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.comment = params[:comment]
    @comment.report_id = session[:report_id]
    @comment.save
    redirect_to("/reports/show/#{session[:report_id]}")
  end
end
