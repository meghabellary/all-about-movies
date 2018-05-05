class Api::V1::MoviesController < ApiController
  protect_from_forgery unless: -> { request.format.json? }


  def index
    render json: { movies: Movie.all }
  end

  def show
    render json: {movie: Movie.find(params[:id])}
  end
end
