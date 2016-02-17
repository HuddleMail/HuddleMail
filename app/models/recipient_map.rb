class RecipientMap < ActiveRecord::Base
  belongs_to DistGroup
  has_many :recipients
end
