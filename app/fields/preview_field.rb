# frozen_string_literal: true

# require "administrate/fields/base"

class PreviewField < Administrate::Field::Base
  def to_s
    data
  end
end
