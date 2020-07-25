class Item < ApplicationRecord

  validates :name, presence: true
  validates :image, presence: true
  validates :explain, presence: true
  validates :category_id, presence: true
  validates :content, presence: true
  validates :how_pay, presence: true
  validates :prefecture_id, presence: true
  validates :how_long, presence: true
  validates :user, presence:true
  validates :price,
    presence: true, 
    numericality: {
      greater_than_or_equal_to: 300,
      less_than: 9999999
    }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :category
  belongs_to :user
  # belongs_to :purchase

  enum content:{
    新品、未使用:1,未使用に近い:2,目立った傷や汚れなし:3,
    やや傷や汚れあり:4,傷や汚れあり:5,全体的に状態が悪い:6
  }

  enum how_pay:{
    着払い:1,送料込み:2
  }

  enum how_long:{
    本日発送:1,明日発送:2,明後日発送:3
  }


end
