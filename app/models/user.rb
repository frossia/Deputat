class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_name, :u_login, :u_email

  has_and_belongs_to_many :user_groups, :uniq => true
end
