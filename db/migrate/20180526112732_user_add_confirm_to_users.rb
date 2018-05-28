class UserAddConfirmToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :confirm, :boolean, default: false
  end
end
