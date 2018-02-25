class Blog < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: [:slugged]
  mount_uploader :preview_img, PreviewUploader

  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
end
