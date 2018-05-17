class Api::V1::ReviewsController < ApiController
  def index
    render json: Review.all
  end

  def create
    data = JSON.parse(request.body.read)
    error = { id: 'error message', body: ''}
    new_review = Review.new(body: data["body"], rating: data["rating"], movie_id: data["movie_id"])
    post_user = current_user
    if !post_user
      error[:body] = "Please log in to add a review"
      render json: error
    else
      new_review.user = post_user
      new_review.save
      render json: new_review
    end
  end
end 
