class Prototype < ActiveRecord::Base
  mount_uploader :avatar, CapturedImageUploader
  belongs_to :user
  has_many :proto_type_images

  accepts_nested_attributes_for :proto_type_images

end
