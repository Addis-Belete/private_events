class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def Show
    @user = User.find(params[:id])
  end
end
