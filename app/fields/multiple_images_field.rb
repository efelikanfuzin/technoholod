# frozen_string_literal: true

# require "administrate/fields/base"

class MultipleImagesField < Administrate::Field::Base
  def url
    data.try(:url)
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def to_s
    data.map(&:url)
  end
end
