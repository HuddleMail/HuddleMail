class HomeController < ApplicationController
  def index
  end

  def login

  end

  def register
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_param)

    if @profile.save
      redirect_to :action => 'success'
    else
      render :action => 'register'
    end

  end

  def profile_param
    params.require(:profiles).permit(:email, :password)

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
