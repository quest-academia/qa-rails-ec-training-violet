class User < ApplicationRecord
  belongs_to :user_classification

  validates :first_name, length: { maximum: 10 }
  validates :last_name, length: { maximum: 10 }
  validates :zipcode, length: { is: 7 }, format: { with: /\A[0-9]+\z/ }
  validates :rprefecture, length: { maximum: 5 }
  validates :municipality, length: { maximum: 10 }
  validates :address, length: { maximum: 15 }
  validates :apartments, length: { maximum: 20 }
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/ }
  validates :phone_number, length: { maximum: 15 }, format: { with: /\A[0-9]+\z/ }

end
