class MovieActor < ApplicationRecord
  validates :movie_id, exclusion: { in: [nil] }
  validates :actor_id, exclusion: { in: [nil] }
  belongs_to :actor
  belongs_to :movie
end
