class BiasRatingsController < ApplicationController
  before_action :current_user_must_be_bias_rating_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_bias_rating_user
    bias_rating = BiasRating.find(params[:id])

    unless current_user == bias_rating.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = BiasRating.ransack(params[:q])
    @bias_ratings = @q.result(:distinct => true).includes(:news_source, :user).page(params[:page]).per(10)

    render("bias_ratings/index.html.erb")
  end

  def show
    @bias_rating = BiasRating.find(params[:id])

    render("bias_ratings/show.html.erb")
  end

  def new
    @bias_rating = BiasRating.new

    render("bias_ratings/new.html.erb")
  end

  def create
    @bias_rating = BiasRating.new

    @bias_rating.user_id = params[:user_id]
    @bias_rating.news_source_id = params[:news_source_id]
    @bias_rating.rating = params[:rating]

    save_status = @bias_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bias_ratings/new", "/create_bias_rating"
        redirect_to("/bias_ratings")
      else
        redirect_back(:fallback_location => "/", :notice => "Bias rating created successfully.")
      end
    else
      render("bias_ratings/new.html.erb")
    end
  end

  def edit
    @bias_rating = BiasRating.find(params[:id])

    render("bias_ratings/edit.html.erb")
  end

  def update
    @bias_rating = BiasRating.find(params[:id])

    @bias_rating.user_id = params[:user_id]
    @bias_rating.news_source_id = params[:news_source_id]
    @bias_rating.rating = params[:rating]

    save_status = @bias_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bias_ratings/#{@bias_rating.id}/edit", "/update_bias_rating"
        redirect_to("/bias_ratings/#{@bias_rating.id}", :notice => "Bias rating updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bias rating updated successfully.")
      end
    else
      render("bias_ratings/edit.html.erb")
    end
  end

  def destroy
    @bias_rating = BiasRating.find(params[:id])

    @bias_rating.destroy

    if URI(request.referer).path == "/bias_ratings/#{@bias_rating.id}"
      redirect_to("/", :notice => "Bias rating deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bias rating deleted.")
    end
  end
end
