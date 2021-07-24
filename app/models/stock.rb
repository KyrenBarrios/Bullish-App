class Stock < ApplicationRecord
  has_many :comments
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
end
