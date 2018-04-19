# frozen_string_literal: true

module Sluggable
  extend ActiveSupport::Concern

  included do
    def should_generate_new_friendly_id?
      slug.blank?
    end

    def normalize_friendly_id(text)
      text.to_slug.normalize(transliterations: :russian).to_s
    end
  end
end
