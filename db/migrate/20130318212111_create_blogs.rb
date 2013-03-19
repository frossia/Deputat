class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :blog_name, :null => false, :default => ""
      t.boolean :is_public, :null => false, :default => false
      t.integer :user_id
    end
  end
end
