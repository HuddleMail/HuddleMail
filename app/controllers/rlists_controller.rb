class RlistsController < ApplicationController
  def create
    @dis_groups = DisGroup.find(params[:dis_group_id])
    @rlists = @dis_groups.rlists.create(rlist_params)
    redirect_to @dis_groups
  end

  private
    def rlist_params
      params.require(:rlist).permit(:email, :pubkey)
    end
end
