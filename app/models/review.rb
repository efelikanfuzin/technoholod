# frozen_string_literal: true

class Review < ApplicationRecord
  mount_uploader :photo, PreviewUploader

  validates :full_name, :job, :content, :photo, presence: true

  scope :can_show, -> { where(show: true) }
end
