# frozen_string_literal: true

require 'administrate/base_dashboard'

class BlogDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    title: Field::String,
    content: HtmlField,
    preview: Field::Text,
    preview_img: ImageField,
    keywords: Field::String,
    description: Field::String,
    description_filled: Field::String,
    keywords_filled: Field::String,
    slug: Field::String
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
    keywords
    description
    slug
  ]

  FORM_ATTRIBUTES = %i[
    title
    preview
    preview_img
    content
    keywords
    description
    slug
  ].freeze

  def display_resource(blog)
    "блогпост ##{blog.id}"
  end
end
