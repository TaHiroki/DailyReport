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

  def edit
    @report = Report.find_by(id: params[:id])
  end

  def update
    @report = Report.find_by(id: params[:id])
    @report.title = params[:title]
    @report.content = params[:content]
    @report.save
    redirect_to("/reports/show/#{@reort.id}")
  end
end
