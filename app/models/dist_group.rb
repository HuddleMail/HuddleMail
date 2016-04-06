class DistGroup < ActiveRecord::Base
  belongs_to :user
  has_many :recipients
  validates :dist_name, presence: true, uniqueness: true
  validates :pub_key, presence: true, uniqueness: true
end
