class Address < ApplicationRecord

  belongs_to :item
  with_options presence: true do
    validates :postal, format: { with: /\A\d{3}[-]\d{4}\z/ =~ "POSTAL_CODE_REGEX",  message: "should be a postal 3characters - ４characters"} 
    validates :japan_id
    validates :city
    validates :town
    validates :phone_number, length: { maximum: 11, message: "must be less than or equal to 11 characters" }, format: { with: /\A[0-9]+\z/, message: "should not include -" }
    validates :item
  end


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :japan
end
