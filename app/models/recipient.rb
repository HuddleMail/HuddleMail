class Recipient < ActiveRecord::Base
  belongs_to :recipient_map
  validates_presence_of :email_address, :id, :pub_key, :message => "Must have email address, id, and public key"
end
