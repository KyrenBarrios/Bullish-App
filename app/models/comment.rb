class Comment < ApplicationRecord
  belongs_to :stock
  validates :comment, presence: true
  validates :commentor, presence: true
end
