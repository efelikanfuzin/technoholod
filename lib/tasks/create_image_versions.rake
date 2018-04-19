# frozen_string_literal: true

task create_image_versions: :environment do
  Blog.all.find_each do |record|
    record.preview_img.recreate_versions! if record.preview_img?
  end

  puts '============== recreate for Blogs =============='

  Product.all.find_each do |record|
    record.avatar.recreate_versions! if record.avatar?
  end

  puts '============== recreate for Products =============='

  Project.all.find_each do |record|
    record.preview_img.recreate_versions! if record.preview_img?
    record.photos.each(&:recreate_versions!)
  end

  puts '============== recreate for Projects =============='

  Stock.all.find_each do |record|
    record.preview.recreate_versions! if record.preview?
  end

  puts '============== recreate for Stocks =============='
end
