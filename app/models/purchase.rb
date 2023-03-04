class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :creation

  validates :quantity, presence: true
end
