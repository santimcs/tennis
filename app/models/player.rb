class Player < ActiveRecord::Base
  attr_accessible :birthdate, :country_id, :first_name, :gender, :height, :image, :last_name, :rank
  belongs_to :country
  default_scope :order => 'last_name ASC, first_name ASC'
    mount_uploader :image, ImageUploader
  # Getter
  def full_name
  	[first_name, last_name].join(' ')
  end
  
  # Setter
  def full_name=(name)
  	split = name.split(' ', 2)
  	self.first_name = split.first
  	self.last_name = split.last
 end
 
end
