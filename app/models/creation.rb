class Creation < ApplicationRecord
  has_many :purchases, dependent: :destroy

  validates :artist, presence: true
  validates :title, presence: true
  validates :type_of_work, presence: true
  validates :medium, presence: true
  validates :dimensions, presence: true
  validates :date_of_composition, presence: true
  validates :art_category, presence: true
  validates :country_of_origin, presence: true
  validates :price, presence: true
end
