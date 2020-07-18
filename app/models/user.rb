class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  validates :h-last-name, presence: true
  validates :h-first-name, presence: true
  validates :k-last-name, presence: true
  validates :k-first-name, presence: true
  validates :password, presence: true
  validates :ensure-password, presence: true
  validates :birthday, presence: true

end
