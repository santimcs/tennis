class Category < ActiveRecord::Base
  attr_accessible :name, :points
  default_scope :order => 'name ASC'

 end
