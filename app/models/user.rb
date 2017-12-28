class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :collections
  validates :username, presence: true
  validates :username, length: { maximum: 16,
    too_long: "username must be between 4 and 16 characters" }
  validates :username, length: { minimum: 4,
    too_short: "username must be between 4 and 16 characters" }
  validates :username, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
