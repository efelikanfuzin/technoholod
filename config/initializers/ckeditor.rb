Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'
  config.assets_languages = ['ru']
  config.assets_plugins = %w[image smiley]
  config.cdn_url = '//cdn.ckeditor.com/4.9.1/basic/ckeditor.js'
end
