class Api::V1::MoviesController < ApiController
  protect_from_forgery unless: -> { request.format.json? }


  def index
    render json: { movies: Movie.all }
  end

  def show
    render json: Movie.find(params[:id]),  serializer: MovieShowSerializer
  end
end
