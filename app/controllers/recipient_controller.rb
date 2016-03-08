class RecipientController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipient = Recipient.all
  end

  def new
    @recipient = Recipient.new
  end

end
