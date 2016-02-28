class Product < ActiveRecord::Base
  include FriendlyId

  friendly_id :title, use: [:slugged], slug_column: :title
  enum products_type: [ :shop, :catering, :dishes ]
  mount_uploader :avatar, PreviewUploader

  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
end
