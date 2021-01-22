# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: VALID_EMAIL_REGEX }

  validates :nick, presence: true,
                   uniqueness: true,
                   length: { in: 4..20 }
end
