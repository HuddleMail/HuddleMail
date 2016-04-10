class DistGroup < ActiveRecord::Base
  belongs_to :user
  has_many :recipients
  validates :dist_name, presence: true, uniqueness: { case_sensitive: false }
end
