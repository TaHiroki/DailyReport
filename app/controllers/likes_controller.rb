class LikesController < ApplicationController
  
  def create
    @like = Like.new(
      user_id: @current_user.id,
      report_id: params[:report_id]
    )  
    @like.save
    redirect_to("/reports/show/#{params[:report_id]}")
  end

  def destroy
    @like = Like.find_by(
      user_id: @current_user.id,
      report_id: params[:report_id]
    )  
    @like.destroy
    redirect_to("/reports/show/#{params[:report_id]}")
  end

end
