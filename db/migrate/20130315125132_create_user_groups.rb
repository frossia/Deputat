class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.string :group_name, :null => false

      t.timestamps
    end
  end
end
