class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :image_url
      t.string :name, null:false
      t.integer :age, null:false
      t.text :description

      t.timestamps
    end
  end
end
