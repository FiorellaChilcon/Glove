# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation virtual
class User < ApplicationRecord
  has_secure_password

  has_many  :twitter_accounts
  has_many  :tweets

  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
