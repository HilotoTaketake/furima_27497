class PurchasesController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :user_restriction, only: [:index]
  before_action :set_item, only: [:create]
  def index 
    @user = current_user
    @purchase = Purchase.new
    @item = Item.find(params[:id])
    @address = Address.new
  end

  def create
    @purchase = Purchase.new
    @purchase.user = current_user
    @purchase.item = @item
    @address = Address.new(address_params)
    @address.item = @item
    @user = User.find(params[:id])
    if @purchase.save && @address.save
      pay_item
      return redirect_to root_path
    else
      render :index
    end
  end
  
  private

  def address_params
    params.require(:purchase).permit(:postal, :japan_id, :city, :town, :building, :phone_number)
  end

  def set_item
    @item = Item.find(params[:format])
  end


  def pay_item
    @item = Item.find(params[:format])
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]           # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.price,
      card: params['token'],    # カードトークン
      currency:'jpy'                 # 通貨の種類
    )
  end

  def user_restriction
    if current_user == @user 
      redirect_to root_path
    end
  end

end
  

