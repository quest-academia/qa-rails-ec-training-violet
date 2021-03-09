class User < ApplicationRecord
  belongs_to :user_classification

  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/ }, length: { in: 6..15}, presence: true
  validates :first_name, length: { maximum: 10 }, presence: true
  validates :last_name, length: { maximum: 10 }, presence: true
  validates :zipcode, length: { is: 7 }, format: { with: /\A[0-9]+\z/ }, presence: true
  validates :prefecture, length: { maximum: 5 }, presence: true
  validates :municipality, length: { maximum: 10 }, presence: true
  validates :address, length: { maximum: 15 }, presence: true
  validates :apartments, length: { maximum: 20 }, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/ }, presence: true
  validates :phone_number, length: { maximum: 15 }, format: { with: /\A[0-9]+\z/ }, presence: true
  validates :delete_flag, inclusion: { in: [true, false]}

end
