class ProtoTypeImage < ActiveRecord::Base
  mount_uploader :main_avatar, CapturedImageUploader
  mount_uploader :sub_avatar, CapturedImageUploader

  belongs_to :prototype
end
