class PrototypeImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  enum status: { main: "1", sub: "2" }
  validates :image, presence: true
  belongs_to :prototype
end
