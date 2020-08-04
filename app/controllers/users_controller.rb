class UsersController < ApplicationController
  def index
    @user = User.all
    @item = Item.new
  end 

  def show
    @item = Item.all
  end
  
end
