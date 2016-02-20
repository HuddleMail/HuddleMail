class ProfileDistGroupMap < ActiveRecord::Base
  belongs_to :profile
  belongs_to :dist_group

end
