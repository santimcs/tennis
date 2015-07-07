class Venue < ActiveRecord::Base
  attr_accessible :city, :country_id, :image, :name, :surface
  belongs_to :country
  default_scope :order => 'name ASC'
  mount_uploader :image, ImageUploader
	
end
