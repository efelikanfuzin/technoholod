# frozen_string_literal: true

require 'administrate/base_dashboard'

class ReviewDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    full_name: Field::String,
    job: Field::String,
    content: HtmlField,
    photo: ImageField,
    show: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    full_name
    job
    content
    show
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    full_name
    job
    content
    photo
    show
  ].freeze

  FORM_ATTRIBUTES = %i[
    full_name
    job
    content
    photo
    show
  ].freeze
end
