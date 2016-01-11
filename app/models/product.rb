class Product < ActiveRecord::Base
	belongs_to :item
	belongs_to :cart

	has_attached_file :image, styles: {  medium: "170x150#", small: "160x160>", thumb: "60x60#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
