class Like < ActiveRecord::Base
  belongs_to :usr
  belongs_to :prototype, counter_cache: :likes_count
end
