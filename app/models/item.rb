class Item < ApplicationRecord
  has_one_attached :image
  with_options presence: true do
    validates :image
    validates :name
    validates :explain
    validates :content
    validates :how_pay
    validates :how_long
    validates :price,  numericality:{greater_than_or_equal_to: 300,less_than_or_equal_to:9999999}
  end
      

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :category
  belongs_to :user
  has_many :purchases
  has_one :address

  enum content:{
    新品、未使用:1,未使用に近い:2,目立った傷や汚れなし:3,
    やや傷や汚れあり:4,傷や汚れあり:5,全体的に状態が悪い:6
  }

  enum how_pay:{
    着払い:1,送料込み:2
  }

  enum how_long:{
    １日〜２日:1,３日〜４日:2,６日〜７日:3
  }


end
