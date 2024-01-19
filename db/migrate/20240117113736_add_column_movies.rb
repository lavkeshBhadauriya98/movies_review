class AddColumnMovies < ActiveRecord::Migration[7.1]
  def change
     add_reference :movies,  :star_cast, index: true
     add_reference :movies, :director, index: true
  end
end
