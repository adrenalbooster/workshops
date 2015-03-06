class ReviewsController < ApplicationController
  expose(:review)
  expose(:product)

  def edit
  end

  def create
    self.review = Review.new(review_params)
    review.user = current_user
    unless Review.exists?( {product_id: product, user_id: current_user})
      if review.save
        product.reviews << review
        redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
      else
        flash[:error] = 'You cannot save empty review.'
        redirect_to category_product_url(product.category, product)
      end
    else
      flash[:error] = "You gave us your review already."
      redirect_to category_product_url(product.category, product)
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
