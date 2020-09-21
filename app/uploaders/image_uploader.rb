class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def default_url(*args)
  #   "snap.jpg"
  #   # "thumb_default.jpg"
  # end

  process resize_to_fill: [400, 600]

  version :thumb do
    process resize_to_fit: [100, 100]
  end

  process convert: 'jpg'

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def filename
    "snap.jpg" if original_filename
  end
end
