class RenameColumnToProtoTypeImage < ActiveRecord::Migration
  def change
    rename_column :proto_type_images_table, :main_image, :images
  end
end
