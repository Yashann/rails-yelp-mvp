class ReviewsController < ApplicationController
  def new
   @restaurant = Restaurant.find(params[:restaurant_id])
   @review = Review.new
  end

  def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reviews = Review.new(review_params)
  @reviews.restaurant = @restaurant
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end
end
