# frozen_string_literal: true

require 'administrate/base_dashboard'

class PageDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    name: Field::String,
    title: Field::Text,
    description: Field::Text,
    description_filled: Field::String,
    keywords_filled: Field::String,
    keywords: Field::Text
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :name,
    :title,
    :description_filled,
    :keywords_filled
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :title,
    :description,
    :keywords
  ]

  FORM_ATTRIBUTES = %i[
    name
    title
    description
    keywords
  ].freeze

  def display_resource(product)
    "Страница ##{product.id}"
  end
end
