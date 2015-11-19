class ChangeStatusToPrototypeImages < ActiveRecord::Migration
  def up
    change_column :prototype_images, :status, :string, null: false, default: 0
  end

  def down
    change_column :prototype_images, :status, :integer, null: true
  end
end
