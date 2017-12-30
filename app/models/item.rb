class Item < ApplicationRecord
  belongs_to :collection
  belongs_to :status
  validates :name, presence: true
  validates :notes, length: { maximum: 100,
    too_long: "Notes can only be up to 100 characters" }
end
