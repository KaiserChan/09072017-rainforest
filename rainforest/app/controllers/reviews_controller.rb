class ReviewsController < ApplicationController

  def create
    @review = Review.new

    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    @review.save

      redirect_to product_path(@review.product_id)

  end

  def edit
    @product = Product.find(params[:id])
    @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    @review.save

      redirect_to product_path(@review.product_id)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    flash[:notice] = "Review successfully deleted"
    redirect_to product_path(@review.product_id)
  end

end
