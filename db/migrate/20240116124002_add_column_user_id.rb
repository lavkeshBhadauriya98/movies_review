class AddColumnUserId < ActiveRecord::Migration[7.1]
  def change
        add_reference :movies,  :user, index: true
        add_reference :reviews, :user, index: true
      end
end
