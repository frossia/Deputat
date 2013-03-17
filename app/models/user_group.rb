class UserGroup < ActiveRecord::Base
  attr_accessible :group_name

  has_and_belongs_to_many :users, :uniq => true
end
