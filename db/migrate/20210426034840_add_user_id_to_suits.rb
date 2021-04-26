class AddUserIdToSuits < ActiveRecord::Migration[6.1]
  def change
    add_reference :suits, :users, index: true, foreign_key: true
  end
end
