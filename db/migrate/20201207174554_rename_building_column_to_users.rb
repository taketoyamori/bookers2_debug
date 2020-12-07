class RenameBuildingColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :building, :street
  end
end
