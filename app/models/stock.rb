# frozen_string_literal: true

class Stock < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  mount_uploader :preview, PreviewUploader

  validates :title, :description, :price, :sale_price, :preview, presence: true
end
