class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :image_url, null: false
      t.string :title, null:false
      t.text :plot, null:false
      t.date :release_date
      t.string :trailer_url, null: false
      t.string :imbd_movie_id

      t.timestamps
    end
  end
end
