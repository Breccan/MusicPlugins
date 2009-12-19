class Tag < ActiveRecord::Base
  has_many :content_objects
end
