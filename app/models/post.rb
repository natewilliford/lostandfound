class Post < ActiveRecord::Base
  attr_accessible :date
  attr_accessible :description
  attr_accessible :item_type
  attr_accessible :location_id
  attr_accessible :post_type
  attr_accessible :title
  attr_accessible :user_id

  belongs_to :location
end
