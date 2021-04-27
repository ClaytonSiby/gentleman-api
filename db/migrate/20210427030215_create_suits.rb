class CreateSuits < ActiveRecord::Migration[6.1]
  def change
    create_table :suits do |t|
      t.string :name
      t.string :suit_type
      t.string :color
      t.decimal :price
      t.string :size
      t.string :description
      t.string :imageUrl
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
