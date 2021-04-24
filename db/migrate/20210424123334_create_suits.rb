class CreateSuits < ActiveRecord::Migration[6.1]
  def change
    create_table :suits do |t|
      t.string :name
      t.string :type
      t.string :color
      t.decimal :price
      t.string :size
      t.string :description
      t.string :imageUrl
      t.string :user

      t.timestamps
    end
  end
end
