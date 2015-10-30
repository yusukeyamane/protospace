class RenameColumnToProtoTypeImages < ActiveRecord::Migration
  def change
    rename_column :proto_type_images, :main_image, :images
    rename_column :proto_type_images, :sub_image, :sub_eimage
  end
end
