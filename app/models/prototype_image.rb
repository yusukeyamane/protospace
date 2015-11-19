class PrototypeImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  enum status: { main: "main", sub: "sub" }
  belongs_to :prototype
  validates_presence_of :image
end
