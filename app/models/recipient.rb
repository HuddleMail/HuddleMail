class Recipient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :recipient_map
  validates_presence_of :email_address, :id, :pub_key, :message => "Must have email address, id, and public key"
end
