class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:destroy]
  before_action :item_restriction, only: [:show]

  def index
    @item = Item.all.order("created_at DESC")
    @user = User.all
  end

  def show
    @user = User.all
    @category = Category.all
    @prefecture = Prefecture.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path 
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update!(item_params)
      redirect_to items_path(@item)
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy!
      redirect_to items_path(@item)
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :explain, :prefecture_id, :content, :how_pay, :how_long, :price).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_restriction
    @item = Item.find(params[:id])
    unless @item.purchases.empty? 
      redirect_to root_path
    end
  end

end