class Like < ActiveRecord::Base
  belongs_to :usr
  belongs_to :prototype

  def like_user(user)
    likes.find_by(user_id: user)
  end
end
