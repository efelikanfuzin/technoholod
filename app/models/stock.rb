class Stock < ActiveRecord::Base
  mount_uploader :preview, PreviewUploader
end
