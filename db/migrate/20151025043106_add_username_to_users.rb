class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :member_of, :text
  end
end
