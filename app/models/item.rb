class Item < ApplicationRecord
  belongs_to :collection
  validates :status, numericality: { less_than_or_equal_to: 2,  only_integer: true }
  validates :status, presence: true
  validates :notes, length: { maximum: 100,
    too_long: "Notes can only be up to 100 characters" }
end
