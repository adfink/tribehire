class TribeUser < ActiveRecord::Base
  belongs_to :tribe
  belongs_to :user

end
