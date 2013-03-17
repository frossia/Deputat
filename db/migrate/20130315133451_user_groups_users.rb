class UserGroupsUsers < ActiveRecord::Migration
  def change
    create_table :user_groups_users, id: false do |f|
      f.integer :user_id
      f.integer :user_group_id
    end
  end
end
