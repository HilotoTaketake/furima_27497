class Users::SessionsController < Devise::SessionsController

  def new
    @user = User.new
  end

end
