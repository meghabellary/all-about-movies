class Api::V1::FavoritesController < ApiController
  protect_from_forgery unless: -> { request.format.json? }


  def index
    render json: { favorites: ActiveModel::Serializer::ArraySerializer.new(
      Favorite.all,
      each_serializer: FavoriteSerializer)
      }
  end
end
