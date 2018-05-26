class AddDigestTypeToSubscriptions < ActiveRecord::Migration[5.0]
  def change
    remove_column :subscriptions, :type, :integer
    add_column :subscriptions, :digest_type, :integer
  end
end
