class Prototype < ActiveRecord::Base
  mount_uploader :avatar, CapturedImageUploader
  belongs_to :user
  has_many :prototype_images

end
