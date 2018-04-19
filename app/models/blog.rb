# frozen_string_literal: true

class Blog < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  mount_uploader :preview_img, PreviewUploader
end
