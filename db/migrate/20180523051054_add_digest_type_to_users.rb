class AddDigestTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :digest_type, :integer, default: 1
  end
end
