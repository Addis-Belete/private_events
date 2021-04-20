class UsersController < ApplicationController
  def index
  end

  def Show
    @user = User.find(params[id])
  end
end
