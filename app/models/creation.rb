class Creation < ApplicationRecord
  has_many :purchases, dependent: :destroy
  has_one_attached :art_image

  validates :artist, presence: true
  validates :title, presence: true
  validates :type_of_work, presence: true
  validates :medium, presence: true
  validates :dimensions, presence: true
  validates :date_of_composition, presence: true
  validates :art_category, presence: true
  validates :comment, presence: true
  validates :price, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(art_image) if art_image.attached?
  end
end
