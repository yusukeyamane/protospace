class ChangeMemberofToUser < ActiveRecord::Migration
  def change
    def up
      change_column :users, :member_of, :string, null: true, default: 0
    end

    def down
      change_column :users, :member_of, :text, null: false, default: 0
    end

  end
end
