# frozen_string_literal: true

class Page < ApplicationRecord
  validates :name, :title, presence: true

  def description_filled
    description.present? ? '✅' : '❌'
  end

  def keywords_filled
    keywords.present? ? '✅' : '❌'
  end
end
