class Snap < ApplicationRecord
  mount_uploader :images, ImageUploader
end
