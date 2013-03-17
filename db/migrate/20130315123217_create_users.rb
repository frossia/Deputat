class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :u_login, :null => false
      t.string :u_email, :null => false
      t.string :last_name, :null => false
      t.string :middle_name
      t.string :first_name, :null => false

      t.timestamps
    end
  end
end
