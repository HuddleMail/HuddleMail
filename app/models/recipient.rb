class Recipient < ActiveRecord::Base
  belongs_to :dist_group
  validates :email, presence: true
  validates :pub_key, presence: true
end
