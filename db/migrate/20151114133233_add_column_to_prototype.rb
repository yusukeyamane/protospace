class AddColumnToPrototype < ActiveRecord::Migration
  def change
    add_column :prototypes, :likes_counter, :integer
  end
end
