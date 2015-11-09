class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :prototype_id
      t.string :tag_type
      t.timestamps null: false
    end
  end
end
