# frozen_string_literal: true

require 'administrate/base_dashboard'

class ProductDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    title: Field::String,
    description: HtmlField,
    avatar: ImageField,
    products_type: EnumSelectField.with_options(
      choices: Product.products_types.keys
    ),
    meta_description: Field::String,
    meta_keywords: Field::String,
    description_filled: Field::String,
    keywords_filled: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    title
    products_type
    description_filled
    keywords_filled
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    title
    description
    products_type
    avatar
    meta_description
    meta_keywords
    created_at
    updated_at
  ]

  FORM_ATTRIBUTES = %i[
    title
    description
    avatar
    products_type
    meta_description
    meta_keywords
  ].freeze

  def display_resource(product)
    "Продукт ##{product.id}"
  end
end
