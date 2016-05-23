class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
end
	
class User < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x400>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end