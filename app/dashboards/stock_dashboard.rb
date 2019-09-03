# frozen_string_literal: true

require 'administrate/base_dashboard'

class StockDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    title: Field::String,
    description: Field::Text,
    features: HtmlField,
    price: Field::Number.with_options(
      multiplier: 0.01, decimals: 2, prefix: '₽ '
    ),
    sale_price: Field::Number.with_options(
      multiplier: 0.01, decimals: 2, prefix: '₽ '
    ),
    preview: ImageField,
    amount: Field::Number,
    tags: Field::String,
    meta_description: Field::String,
    meta_keywords: Field::String,
    slug: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    keywords_filled: Field::String,
    description_filled: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    title
    description
    price
    sale_price
    keywords_filled
    description_filled
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    title
    description
    features
    price
    sale_price
    preview
    meta_description
    meta_keywords
    slug
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    description
    features
    price
    sale_price
    preview
    meta_description
    meta_keywords
    slug
  ].freeze

  def display_resource(stock)
    "Распродажа ##{stock.id}"
  end
end
