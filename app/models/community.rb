class Community < ApplicationRecord
  has_many :user
  
  validates :user_id, uniqueness: true
end
