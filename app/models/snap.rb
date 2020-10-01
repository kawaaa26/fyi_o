class Snap < ApplicationRecord
  mount_uploaders :images, ImagesUploader
  validates :images, presence: true
  validates :title, presence: true, length: { maximum: 140 }
  validates :detail, presence: true, length: { maximum: 1_000 }
end
