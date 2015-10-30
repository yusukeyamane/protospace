class RenameProtoTypeImageToPrototypeImage < ActiveRecord::Migration
  def change
    rename_table :proto_type_images, :prototype_images
  end
end
