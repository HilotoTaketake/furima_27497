class Item < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :image
    validates :explain
    validates :category_id
    validates :content
    validates :how_pay
    validates :prefecture_id
    validates :how_long
    validates :user
    validates :price,  numericality:{greater_than_or_equal_to: 300,less_than_or_equal_to:9999999}
  end
      

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