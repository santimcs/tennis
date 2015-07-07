class Country < ActiveRecord::Base
  attr_accessible :alpha2, :alpha3, :image, :name, :num3
  default_scope :order => 'name ASC'
      mount_uploader :image, ImageUploader
end
