class RemoveColumnAvatarFromPrototype < ActiveRecord::Migration
  def change
    remove_column :prototypes, :avatar, :text
  end
end
