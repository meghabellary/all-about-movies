class MovieShowSerializer < ActiveModel::Serializer
  attributes :image_url, :id, :title, :plot, :release_date, :trailer_url, :imbd_movie_id, :actor_list
  has_many :reviews

  def actor_list
    object.actors
  end
end
