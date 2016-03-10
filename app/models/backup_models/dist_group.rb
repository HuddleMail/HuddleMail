class DistGroup < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :pub_key, presence: true
  belongs_to :user
  has_many :recipients

end
