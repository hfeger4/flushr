class Api::ReviewsController < ApplicationController
  def index
    if params[:bathroom]
      @reviews = Bathroom.find(params[:bathroom_id]).reviews
      render :index
    end
  end
  def create
    @review = Review.new()
  end

  private
  def review_params
    params.require(:review).permit(:)
  end
end
