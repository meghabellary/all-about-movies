class UserSerializer < ActiveModel::Serializer

has_many :favorites
# has_many :movies, through: :favorites


end
