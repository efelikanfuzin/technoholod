class Film < ActiveRecord::Base
  mount_uploader :preview, PreviewUploader
end
