# frozen_string_literal: true

class Stock < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  mount_uploader :preview, PreviewUploader
end
