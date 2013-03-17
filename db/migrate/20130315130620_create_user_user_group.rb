class CreateUserUserGroup < ActiveRecord::Migration
  def change
    create_table :user_user_goups, id: false do |f|
      f.integer :user_id
      f.integer :user_group_id
    end
  end
end
