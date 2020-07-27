class UsersController < ApplicationController
  def index
    @user = User.all
    @item = Item.all
  end 
end
