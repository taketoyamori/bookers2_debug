class ChangeDataPostalCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :postal_code, :integer
  end
end
