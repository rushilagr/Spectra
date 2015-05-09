# require 'attachment_on_the_fly'

class Image < ActiveRecord::Base
  belongs_to :question
  has_attached_file :file, :styles => { :thumb => ["800", :jpg] }

	validates_attachment_content_type :file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
