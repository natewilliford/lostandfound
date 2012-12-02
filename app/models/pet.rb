class Pet < ActiveRecord::Base
  attr_accessible :breed_id, :description, :name, :sex, :type_id
end
