class ReviewSerializer < ActiveModel::Serializer
attributes :id, :rating, :body, :movie_title
# belongs_to :movie

def movie_title
  object.movie.title
end
end
