class Product < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: [:slugged]
  enum products_type: %i[public_catering furniture store_items]
  mount_uploader :avatar, PreviewUploader

  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
end
