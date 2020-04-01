class ReportsController < ApplicationController
  def index
    @reports = Report.all.order(created_at: :desc)
  end

  def new

  end

  def create
    @report = Report.new
    @report.title = params[:title]
    @report.content = params[:content]
    @report.save
    redirect_to("/reports/index")
  end

  def show
    @report = Report.find_by(id: params[:id])
  end
end
