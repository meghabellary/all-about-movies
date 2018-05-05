class CreateMovieActors < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_actors do |t|
      t.belongs_to :movie
      t.belongs_to :actor

      t.timestamps
    end
  end
end
