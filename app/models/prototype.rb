class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_images, inverse_of: :prototype

  validates :title, :catch_copy, :concept, presence: true
  accepts_nested_attributes_for :prototype_images

end
