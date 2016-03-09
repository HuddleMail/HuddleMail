class RecipientController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipient = Recipient.all
  end

  def new
    @recipient = Recipient.new
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_recipients
    @recipient = Recipient.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def recipient_params
    params.require(:recipient).permit(:email, users_attributes: [ :email, :pub_key ])
  end

end
