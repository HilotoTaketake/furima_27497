class TransactionsController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :user_restriction, only: [:index]

  def index 
    @user = current_user
    @transaction = Transaction.new
    @item = Item.find(params[:id])
  end

  def create
    @transaction = Transaction.new
    @transaction.user = current_user
    @item = Item.find(params[:format])
    @transaction.item = @item
    @address = Address.new(address_params)
    @address.item = @item
    if @transaction.save! && @address.save! 
      @item = Item.find(params[:format])
      pay_item
      return redirect_to root_path
    else
      render :index
    end
  end
  
  private

  def address_params
    params.require(:transaction).permit(:postal, :japan_id, :city, :town, :building, :phone_number)
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
  

