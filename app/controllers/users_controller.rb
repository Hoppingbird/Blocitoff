class UsersController < ApplicationController
  #before_action :authenicate_user!

  def show
    @items = current_user.items
  end

end
