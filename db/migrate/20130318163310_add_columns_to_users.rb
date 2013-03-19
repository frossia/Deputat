class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :about_dep
    end
  end
end
