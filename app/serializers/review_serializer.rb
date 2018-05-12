class ReviewSerializer < ActiveModel::Serializer
attributes :id, :rating, :body, :movie_title, :user_id, :user_name
belongs_to :movie
belongs_to :user

  def movie_title
    object.movie.title
  end

  def user_name
    object.user.email
  end

end
