class Snap < ApplicationRecord
  mount_uploader :images, ImagesUploader
end
