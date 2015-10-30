class CreateProtoTypeImages < ActiveRecord::Migration
  def change
    create_table :prototype_images do |t|
      t.integer :prototype_id
      t.text :main_avatar
      t.text :side_avatar

      t.timestamps null: false
    end
  end
end
