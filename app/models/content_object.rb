class ContentObject < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :tags
  
  validates_presence_of :name
end
