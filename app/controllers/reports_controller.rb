class ReportsController < ApplicationController
  def index
    @reports = Report.all.order(created_at: :desc)
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new
    @report.title = params[:title]
    @report.content = params[:content]
    if @report.save
      redirect_to("/reports/index")
    else
      render("reports/new")
    end
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
    redirect_to("/reports/show/#{@report.id}")
  end

  def destroy
    @report = Report.find_by(id: params[:id])
    @report.destroy
    redirect_to("/reports/index")
  end
end
