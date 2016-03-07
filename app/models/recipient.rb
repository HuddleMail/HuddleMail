class Recipient < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :pub_key, presence: true
  validates :uniqueness => {:scope => [:email, :pub_key]}
end
