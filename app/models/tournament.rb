class Tournament < ActiveRecord::Base
  attr_accessible :category_id, :from_date, :image, :name, :prize, :to_date, :venue_id, :website, :year
  belongs_to :category
  belongs_to :venue
  default_scope :order => 'name ASC, year DESC'
  mount_uploader :image, ImageUploader
  # Getter
  def name_year
	[name, year].join(' ')
  end
  
  # Setter
  def name_year=(name)
	split = name.split(' ', 2)
	self.name = split.first
	self.year = split.last
 end


end
