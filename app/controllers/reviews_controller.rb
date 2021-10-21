class ReviewsController < ApplicationController
  def create
   @review = Review.new(review_params)
    if @review.save
    redirect_to touring_log_path(params[:review][:touring_log_id]), notice: 'コメントしました' 
    else
    redirect_to touring_log_path(params[:review][:touring_log_id]), notice: 'コメントできませんでした' 
    end
  end
  
  private
    def review_params
      params.require(:review).permit(:content, :touring_log_id).merge(user_id: current_user.id)
    end
end
