class DisGroup < ActiveRecord::Base
  has_many :rlist
  def get_dis_name
	return disname
  end

end
