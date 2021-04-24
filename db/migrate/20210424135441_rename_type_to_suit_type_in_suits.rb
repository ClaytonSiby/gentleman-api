class RenameTypeToSuitTypeInSuits < ActiveRecord::Migration[6.1]
  def change
    rename_column :suits, :type, :suit_type
  end
end
