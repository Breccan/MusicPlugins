class ContentObject < ActiveRecord::Base
  URL_REGEXP = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
  belongs_to :user
  belongs_to :category
  has_many :tags

  validates_presence_of :name, :description, :user_id, :category_id
  validates_format_of :video_url, :homepage, :with => URL_REGEXP, :allow_nil => true

end
