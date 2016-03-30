class RecipientsController < ApplicationController
	def create
		@dist_group = DistGroup.find(params[:dist_group_id])
		@recipient = @dist_group.recipients.create(recipient_params)
    redirect_to dist_group_path(@dist_group)
	end

	private
		def recipient_params
			params.require(:recipient).permit(:email, :pub_key)
		end
end
