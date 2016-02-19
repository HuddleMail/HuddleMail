class Recipient < ActiveRecord::Base
  belongs_to :recipient_map
  validates_presence_of :email, :pub_key
end
