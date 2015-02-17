class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.boolean :isMember, default: false

      t.timestamps
    end
  end
end
