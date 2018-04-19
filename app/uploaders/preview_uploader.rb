# frozen_string_literal: true

class PreviewUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process quality: 75

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :medium do
    process resize_to_fit: [800, 800]
  end

  version :preview, from_version: :medium do
    process resize_to_fit: [400, 400]
  end

  version :thumb, from_version: :preview do
    process resize_to_fill: [200, 200]
  end

  def extension_white_list
    %w[jpg jpeg png]
  end
end
