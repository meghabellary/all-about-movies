class FavoriteSerializer < ActiveModel::Serializer
  attributes :movie, :user

  belongs_to :movie
  belongs_to :user
end
