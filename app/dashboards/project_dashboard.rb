# frozen_string_literal: true

require 'administrate/base_dashboard'

class ProjectDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    content: HtmlField,
    preview: HtmlField,
    preview_img: ImageField,
    photos: MultipleImagesField,
    slug: Field::String,
    keywords: Field::String,
    description: Field::String,
    keywords_filled: Field::String,
    description_filled: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    title
    keywords_filled
    description_filled
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    title
    content
    preview
    preview_img
    photos
    slug
    keywords
    description
  ]

  FORM_ATTRIBUTES = %i[
    title
    content
    preview
    preview_img
    photos
    slug
    keywords
    description
  ].freeze

  def display_resource(stock)
    "Проект ##{stock.id}"
  end
end
