class ContentObject < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :tags
  has_attached_file :thumbnail, :style => { :thumb => {"125x100#", :png}}
  has_attached_file :content 
end
