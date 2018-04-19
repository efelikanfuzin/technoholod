# frozen_string_literal: true

task update_slug: :environment do
  [Blog, Product, Project, Stock].each do |class_name|
    class_name.all.find_each do |record|
      if record.slug.blank?
        record.update(slug: record.normalize_friendly_id(record.title))
      end
    end
  end
end
