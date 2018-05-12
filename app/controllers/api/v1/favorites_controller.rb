class Api::V1::FavoritesController < ApiController
  protect_from_forgery unless: -> { request.format.json? }
  def index
    present_user = current_user
    render json: User.find(present_user.id),  serializer: UserSerializer
  end
end
