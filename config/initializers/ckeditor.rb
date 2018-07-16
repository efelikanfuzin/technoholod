# Use this hook to configure ckeditor
Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'
  config.assets_languages = %w(ru)
  config.assets_plugins = %w(image)
  config.cdn_url = "//cdn.ckeditor.com/4.6.1/standart/ckeditor.js"
end
