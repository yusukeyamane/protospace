class PrototypeImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  enum status: { main: '1', sub: '2' }
  belongs_to :prototype
  validates :status, presence: true
end
