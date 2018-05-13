class FavoriteSerializer < ActiveModel::Serializer
  attributes :movie, :user,:id

  belongs_to :movie
  belongs_to :user
end
