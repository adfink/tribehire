class Tribe < ActiveRecord::Base
  has_many :tribe_users
  has_many :users, through: :tribe_users
end
