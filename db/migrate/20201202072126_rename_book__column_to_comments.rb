class RenameBookColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :book_, :book_id
  end
end
