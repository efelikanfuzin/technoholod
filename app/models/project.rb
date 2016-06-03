class Project < ActiveRecord::Base
  mount_uploader :preview_img, PreviewUploader
  mount_uploaders :photos, PreviewUploader
end
