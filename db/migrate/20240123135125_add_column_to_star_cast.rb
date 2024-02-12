class AddColumnToStarCast < ActiveRecord::Migration[7.1]
  def change
    add_column :star_casts, :link, :string
  end
end
