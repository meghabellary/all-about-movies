class Api::V1::ActorsController < ApiController
  protect_from_forgery unless: -> { request.format.json? }


  def index
    render json: { actors: Actor.all }
  end

  def show
    render json: {actor: Actor.find(params[:id])}
  end
end
