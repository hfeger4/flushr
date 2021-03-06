class Api::ReviewsController < ApplicationController
  def index
    if params[:bathroom]
      @reviews = Bathroom.find(params[:bathroom_id]).reviews
      render :index
    else
      @reviews = Review.all
    end
  end
  def create
    @review = Review.new()
    @review.save
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
