class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :prototype_images, dependent: :delete_all
  acts_as_taggable

  paginates_per 8

  def like_user?(user)
    if likes.find_by(user_id: user.id)
      return true
    else
      return false
    end
  end

  def validate_image
  end

  validates :title, :catch_copy, :concept, presence: true
  accepts_nested_attributes_for :prototype_images
end
