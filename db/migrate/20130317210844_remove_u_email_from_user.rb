class RemoveUEmailFromUser < ActiveRecord::Migration

  def change
    remove_column :users, :u_email, :u_login
  end

end
