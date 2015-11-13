class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :prototype_images, inverse_of: :prototype
  acts_as_taggable

  def like_user(user)
    likes.find_by(user_id: user.id)
  end
  validates :title, :catch_copy, :concept, presence: true
  accepts_nested_attributes_for :prototype_images
end
