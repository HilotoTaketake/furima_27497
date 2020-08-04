require 'rails_helper'
describe Address, type: :model do
  describe '#create' do
    it "is invalid without a postal" do
      address = FactoryBot.build(:address, postal: nil)
      address.valid?
      expect(address.errors[:postal]).to include("can't be blank")
    end

    it "is valid with a postal 3characters - ４characters " do
      address = FactoryBot.build(:address, postal: "1234567")
      address.valid?
      expect(address.errors[:postal]).to include("should be a postal 3characters - ４characters")
    end

    it "is invalid without a japan_id" do
      address = FactoryBot.build(:address, japan_id: nil)
      address.valid?
      expect(address.errors[:japan_id]).to include("can't be blank")
    end

    it "is invalid without a city" do
      address = FactoryBot.build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    it "is invalid without a town" do
      address = FactoryBot.build(:address, town: nil)
      address.valid?
      expect(address.errors[:town]).to include("can't be blank")
    end

    it "is invalid without a phone_number" do
      address = FactoryBot.build(:address, phone_number: nil)
      address.valid?
      expect(address.errors[:phone_number]).to include("can't be blank")
    end

    it "is valid with a phone_number that has less than or equal to 11 characters" do
      address = FactoryBot.build(:address, phone_number: 111111111111)
      address.valid?
      expect(address.errors[:phone_number]).to include("must be less than or equal to 11 characters")
    end

    it "is valid with a phone_number that does not have -" do
      address = FactoryBot.build(:address, phone_number: nil)
      address.valid?
      expect(address.errors[:phone_number]).to include("should not include -")
    end

    it "is invalid without a item_id" do
      address = FactoryBot.build(:address, item: nil)
      address.valid?
      expect(address.errors[:item]).to include("can't be blank")
    end
  end
end
