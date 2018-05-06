class MovieShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :release_date, :actor_list
  has_many :reviews
  
  def actor_list
    object.actors
  end
end
