class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :add_username_to_users, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
