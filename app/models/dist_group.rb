class DistGroup < ActiveRecord::Base
  belongs_to :user
  has_many :recipients
end
