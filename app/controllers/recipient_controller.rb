class RecipientController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipient = Recipient.new
  end



end
