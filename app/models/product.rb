class Product < ActiveRecord::Base
	belongs_to :item
	has_attached_file :image, styles: { medium: "150x150>", thumb: "60x60#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
