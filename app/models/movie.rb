class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true

  validates :trailer_url, presence: true


  has_many :movie_actors
  has_many :actors, through: :movie_actors
  has_many :reviews
end
