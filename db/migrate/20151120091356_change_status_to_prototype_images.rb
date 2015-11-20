class ChangeStatusToPrototypeImages < ActiveRecord::Migration
  def change
    change_column :prototype_images, :status, :integer, null: false
  end
end
