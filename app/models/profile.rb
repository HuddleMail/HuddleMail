class Profile < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
