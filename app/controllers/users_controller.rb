class UsersController < ApplicationController
  #before_action :authenicate_user!

  def show
    @user = current_user.email
  end
end
