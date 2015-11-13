class Like < ActiveRecord::Base
  belongs_to :usr
  belongs_to :prototype
end
