require 'rails_helper'
describe Item, type: :model do
  describe '#create' do
    it "is invalid without a name" do
      item = FactoryBot.build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without an image" do
      item = FactoryBot.build(:item, image: nil)
      item.valid?
      expect(item.errors[:image]).to include("can't be blank")
    end

    it "is invalid without an explain" do
      item = FactoryBot.build(:item, explain: nil)
      item.valid?
      expect(item.errors[:explain]).to include("can't be blank")
    end

    it "is invalid without a content" do
      item = FactoryBot.build(:item, content: nil)
      item.valid?
      expect(item.errors[:content]).to include("can't be blank")
    end

    it "is invalid without a category_id" do
      item = FactoryBot.build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "is invalid without a how_pay" do
      item = FactoryBot.build(:item, how_pay: nil)
      item.valid?
      expect(item.errors[:how_pay]).to include("can't be blank")
    end
    it "is invalid without a prefecture_id" do
      item = FactoryBot.build(:item, prefecture_id: nil)
      item.valid?
      expect(item.errors[:prefecture_id]).to include("can't be blank")
    end

    it "is invalid without a how_long" do
      item = FactoryBot.build(:item, how_long: nil)
      item.valid?
      expect(item.errors[:how_long]).to include("can't be blank")
    end

    it "is invalid without a price" do
      item = FactoryBot.build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    it "must be less than 300" do
      item = FactoryBot.build(:item, price: 299)
      item.valid?
      expect(item.errors[:price]).to include("must be greater than or equal to 300")
    end

    it "must be greater than 9999999" do
      item = FactoryBot.build(:item, price: 100000000)
      item.valid?
      expect(item.errors[:price]).to include("must be less than or equal to 9999999")
    end

    it "is invalid without a user_id" do
      item = FactoryBot.build(:item, user: nil)
      item.valid?
      expect(item.errors[:user]).to include("can't be blank")
    end
  end
end
