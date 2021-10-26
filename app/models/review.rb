class Review < ApplicationRecord
  belongs_to :touring_log
  belongs_to :user

  def save_review(review, review_params)
       review.content = review_params[:content]
       review.user_id = review_params[:user_id]
       review.touring_log_id = review_params[:touring_log_id]
       save
     end
end
