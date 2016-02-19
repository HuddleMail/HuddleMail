class HomeController < ApplicationController
  def index
  end

  def login

  end

  def register
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.new(recipient_param)

    if @recipient.save
      redirect_to :action => 'success'
    else
      render :action => 'register'
    end

  end

  def recipient_param
    params.require(:recipients).permit(:email, :pub_key)

  end

  def success

  end

  def show

  end

  def destroy

  end

  def update

  end
end
