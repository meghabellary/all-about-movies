class Api::V1::ReviewsController < ApiController
  def index
    render json: Review.all
  end

  def create
    data = JSON.parse(request.body.read)
    new_review = Review.new(body: data["body"], rating: data["rating"], movie_id: data["movie_id"])
    new_review.save
      render json: new_review
  end
end
