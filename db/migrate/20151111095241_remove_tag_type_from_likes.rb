class RemoveTagTypeFromLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :tag_type, :integer
  end
end
