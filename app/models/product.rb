class Product < ActiveRecord::Base

  mount_uploader :avatar, PreviewUploader
  mount_uploaders :photos, PreviewUploader
end
