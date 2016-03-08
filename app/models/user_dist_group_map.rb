class UserDistGroupMap < ActiveRecord::Base
  belongs_to :user
  belongs_to :dist_group
end
