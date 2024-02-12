class CreateStarCasts < ActiveRecord::Migration[7.1]
  def change
    create_table :star_casts do |t|
      t.string :actor_name
      t.string :actresses_name
      t.string :gender
      t.integer :movie_id
      t.integer :director_id
      
      t.timestamps
    end
  end
end
