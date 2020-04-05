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

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.comment = params[:comment]
    if @comment.save
      flash[:notice] = "コメントを編集しました"
      redirect_to("/reports/show/#{@comment.report_id}")
    else
        render("comments/edit")
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @report_id = @comment.report_id
    @comment.destroy
    flash[:notice] = "コメントを削除しました"
    redirect_to("/reports/show/#{@report_id}")
  end

end
