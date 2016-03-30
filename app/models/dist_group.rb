class DistGroup < ActiveRecord::Base
  #belongs_to :user
  has_many :recipients
  #has_many :rlists
end
