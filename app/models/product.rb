# frozen_string_literal: true

class Product < ApplicationRecord
  extend FriendlyId
  include Sluggable

  friendly_id :title, use: :slugged
  enum products_type: %i[public_catering furniture store_items]
  mount_uploader :avatar, PreviewUploader
end
