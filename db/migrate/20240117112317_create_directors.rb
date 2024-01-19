class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :director_name
      t.string :gender

      t.timestamps
    end
  end
end
