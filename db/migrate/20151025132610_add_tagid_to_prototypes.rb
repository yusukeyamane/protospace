class AddTagidToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :tag_id, :integer
  end
end
