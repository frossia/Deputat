class Blog < ActiveRecord::Base
  attr_accessible :blog_name, :is_public, :user_id

  belongs_to :user
end
