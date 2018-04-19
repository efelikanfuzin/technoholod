# frozen_string_literal: true

class Project < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  mount_uploader :preview_img, PreviewUploader
  mount_uploaders :photos, PreviewUploader
end
