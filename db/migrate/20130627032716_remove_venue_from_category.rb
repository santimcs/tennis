class RemoveVenueFromCategory < ActiveRecord::Migration
  def up
    remove_column :categories, :venue_id
    remove_column :categories, :prize
    remove_column :categories, :image
    remove_column :categories, :website    
  end

  def down
    add_column :categories, :image, :string
    add_column :categories, :prize, :float
    add_column :categories, :venue_id, :integer
    add_column :categories, :website, :string    
  end
end
