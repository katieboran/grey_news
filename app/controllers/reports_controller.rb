class ReportsController < ApplicationController
  def index
    @reports = Report.page(params[:page]).per(10)

    render("reports/index.html.erb")
  end

  def show
    @report = Report.find(params[:id])

    render("reports/show.html.erb")
  end

  def new
    @report = Report.new

    render("reports/new.html.erb")
  end

  def create
    @report = Report.new

    @report.user_id = params[:user_id]
    @report.content = params[:content]
    @report.article_link = params[:article_link]
    @report.news_source_id = params[:news_source_id]

    save_status = @report.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reports/new", "/create_report"
        redirect_to("/reports")
      else
        redirect_back(:fallback_location => "/", :notice => "Report created successfully.")
      end
    else
      render("reports/new.html.erb")
    end
  end

  def edit
    @report = Report.find(params[:id])

    render("reports/edit.html.erb")
  end

  def update
    @report = Report.find(params[:id])

    @report.user_id = params[:user_id]
    @report.content = params[:content]
    @report.article_link = params[:article_link]
    @report.news_source_id = params[:news_source_id]

    save_status = @report.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reports/#{@report.id}/edit", "/update_report"
        redirect_to("/reports/#{@report.id}", :notice => "Report updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Report updated successfully.")
      end
    else
      render("reports/edit.html.erb")
    end
  end

  def destroy
    @report = Report.find(params[:id])

    @report.destroy

    if URI(request.referer).path == "/reports/#{@report.id}"
      redirect_to("/", :notice => "Report deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Report deleted.")
    end
  end
end
