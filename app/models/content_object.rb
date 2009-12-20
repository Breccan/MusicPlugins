class ContentObject < ActiveRecord::Base
  URL_REGEXP = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
  belongs_to :user
  belongs_to :category
  has_many :tags
  has_attached_file :image, :style => { :thumb => {"125x100#", :png}}
  has_attached_file :content 
  acts_as_taggable

  validates_presence_of :name, :description, :user_id, :category_id
  validates_format_of :video_url, :homepage, :with => URL_REGEXP, :allow_blank => true

end
