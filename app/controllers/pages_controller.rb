class PagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to dist_groups_path
    end
  end
end

