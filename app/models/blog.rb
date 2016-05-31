class Blog < ActiveRecord::Base
  mount_uploader :preview_img, PreviewUploader
end
