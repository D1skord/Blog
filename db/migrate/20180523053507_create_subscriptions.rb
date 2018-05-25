class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :type
      t.text :message

      t.timestamps
    end
  end
end
