class Stock < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :title, use: [:slugged]
  mount_uploader :preview, PreviewUploader

  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
end
