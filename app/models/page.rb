# frozen_string_literal: true

class Page < ApplicationRecord
  validates :name, :title, presence: true
end
