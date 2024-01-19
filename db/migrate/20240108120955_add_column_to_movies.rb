class AddColumnToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :image, :blob
  end
end
