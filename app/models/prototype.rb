class Prototype < ActiveRecord::Base
  mount_uploader :avatar, CapturedImageUploader
end
