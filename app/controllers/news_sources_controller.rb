class NewsSourcesController < ApplicationController
  def index
    @news_sources = NewsSource.all

    render("news_sources/index.html.erb")
  end

  def show
    @comment = Comment.new
    @report = Report.new
    @favorite = Favorite.new
    @bias_rating = BiasRating.new
    @news_source = NewsSource.find(params[:id])

    render("news_sources/show.html.erb")
  end

  def new
    @news_source = NewsSource.new

    render("news_sources/new.html.erb")
  end

  def create
    @news_source = NewsSource.new

    @news_source.category = params[:category]
    @news_source.description = params[:description]
    @news_source.location = params[:location]
    @news_source.date_founded = params[:date_founded]
    @news_source.ownership = params[:ownership]
    @news_source.image = params[:image]
    @news_source.website = params[:website]
    @news_source.name = params[:name]

    save_status = @news_source.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/news_sources/new", "/create_news_source"
        redirect_to("/news_sources")
      else
        redirect_back(:fallback_location => "/", :notice => "News source created successfully.")
      end
    else
      render("news_sources/new.html.erb")
    end
  end

  def edit
    @news_source = NewsSource.find(params[:id])

    render("news_sources/edit.html.erb")
  end

  def update
    @news_source = NewsSource.find(params[:id])

    @news_source.category = params[:category]
    @news_source.description = params[:description]
    @news_source.location = params[:location]
    @news_source.date_founded = params[:date_founded]
    @news_source.ownership = params[:ownership]
    @news_source.image = params[:image]
    @news_source.website = params[:website]
    @news_source.name = params[:name]

    save_status = @news_source.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/news_sources/#{@news_source.id}/edit", "/update_news_source"
        redirect_to("/news_sources/#{@news_source.id}", :notice => "News source updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "News source updated successfully.")
      end
    else
      render("news_sources/edit.html.erb")
    end
  end

  def destroy
    @news_source = NewsSource.find(params[:id])

    @news_source.destroy

    if URI(request.referer).path == "/news_sources/#{@news_source.id}"
      redirect_to("/", :notice => "News source deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "News source deleted.")
    end
  end
end
