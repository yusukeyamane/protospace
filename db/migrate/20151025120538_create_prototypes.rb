class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :catch_copy
      t.text :concept
      t.text :avatar
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
