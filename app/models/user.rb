class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  validates :h_last_name, presence: true
  validates :h_first_name, presence: true
  validates :k_last_name, presence: true
  validates :k_first_name, presence: true
  validates :password, presence: true
  validates :ensure_password, presence: true
  validates :birthday, presence: true

end
