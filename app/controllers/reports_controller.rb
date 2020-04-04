class ReportsController < ApplicationController
  before_action :authenticate_user,{only: [:index, :new, :create, :show, :edit, :update, :destroy]}

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
      flash[:notice] = "作成しました"
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
    if @report.save
      flash[:notice] = "変更しました"
      redirect_to("/reports/show/#{@report.id}")
    else
      render("reports/edit")
    end
  end

  def destroy
    @report = Report.find_by(id: params[:id])
    @report.destroy
    flash[:notice] = "削除しました"
    redirect_to("/users/index")
  end

end
