# frozen_string_literal: true

# require "administrate/fields/base"

class ImageField < Administrate::Field::Base
  delegate :url, to: :data

  def thumb
    data.url(:thumb)
  end

  def to_s
    data.url
  end
end
