# frozen_string_literal: true

class Project < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: [:slugged]
  mount_uploader :preview_img, PreviewUploader
  mount_uploaders :photos, PreviewUploader

  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
end
