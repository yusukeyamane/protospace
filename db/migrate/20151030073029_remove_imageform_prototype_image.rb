class RemoveImageformPrototypeImage < ActiveRecord::Migration
  def change
    remove_column :prototype_images, :image, :text
  end
end
