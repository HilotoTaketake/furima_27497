require 'rails_helper'
describe User, type: :model do
  describe '#create' do
    it "is invalid without a nickname" do
      user = FactoryBot.build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without a h_last_name" do
      user = FactoryBot.build(:user, h_last_name: nil)
      user.valid?
      expect(user.errors[:h_last_name]).to include("can't be blank")
    end

    it "is invalid without a h_first_name" do
      user = FactoryBot.build(:user, h_first_name: nil)
      user.valid?
      expect(user.errors[:h_first_name]).to include("can't be blank")
    end

    it "is invalid without a k_last_name" do
      user = FactoryBot.build(:user, k_last_name: nil)
      user.valid?
      expect(user.errors[:k_last_name]).to include("can't be blank")
    end

    it "is invalid without a k_first_name" do
      user = FactoryBot.build(:user, k_first_name: nil)
      user.valid?
      expect(user.errors[:k_first_name]).to include("can't be blank")
    end

    it "is invalid without a birthday" do
      user = FactoryBot.build(:user, birthday: nil)
      user.valid?
      expect(user.errors[:birthday]).to include("can't be blank")
    end

    it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation" do
      user = FactoryBot.build(:user, password_confirmation: nil)
      user.valid?
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end
  end
end
