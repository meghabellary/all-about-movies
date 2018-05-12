class Favorite < ApplicationRecord
  validates :movie_id, exclusion: { in: [nil] }
  validates :user_id, exclusion: { in: [nil] }
  
  belongs_to :user
  belongs_to :movie
end
