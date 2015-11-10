class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :prototype_images, inverse_of: :prototype

  def like_usr(user)
    likes.find_by(user_id: user)
  end
  validates :title, :catch_copy, :concept, presence: true
  accepts_nested_attributes_for :prototype_images
end
