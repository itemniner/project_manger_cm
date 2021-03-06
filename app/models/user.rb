class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, case_sensitive: false
  validates_presence_of :password, require: true

  has_secure_password

  enum role: %w(default user)
end