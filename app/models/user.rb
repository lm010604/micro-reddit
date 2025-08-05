class User < ApplicationRecord
  validates :username, uniqueness: true, length: { in: 3..20 }, presence: true
  validates :email, presence: true, length: { maximum: 255 }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
