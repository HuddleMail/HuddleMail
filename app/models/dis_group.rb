class DisGroup < ActiveRecord::Base
  validates :disname, presence: true, 
	length: { minimum: 5 }
  has_many :rlists

end
