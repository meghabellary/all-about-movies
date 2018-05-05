class MovieShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :release_date, :actor_list

  def actor_list
    object.actors
  end
end
