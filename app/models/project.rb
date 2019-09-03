# frozen_string_literal: true

class Project < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  mount_uploader :preview_img, PreviewUploader
  mount_uploaders :photos, PreviewUploader

  validates :title, :content, :preview, :preview_img, presence: true

  def description_filled
    description.present? ? '✅' : '❌'
  end

  def keywords_filled
    keywords.present? ? '✅' : '❌'
  end
end
