class DistGroupRecipientMap < ActiveRecord::Base
  belongs_to :dist_group
  belongs_to :recipient
end
