class Api::V1::FavoritesController < ApiController
  protect_from_forgery unless: -> { request.format.json? }
  def index
    present_user = current_user
    render json: User.find(present_user.id),  serializer: UserSerializer
  end

  def create
    present_user = current_user
    data = JSON.parse(request.body.read)
    new_favorite = Favorite.new(movie_id: data["movie_id"], user_id: present_user.id)
    new_favorite.save
    render json: new_favorite
  end

  def destroy
    delete_favorite_movie = Favorite.find(params[:id])
    favorite_movie_deleted = delete_favorite_movie
    delete_favorite_movie.destroy
    render json: favorite_movie_deleted
  end
end
