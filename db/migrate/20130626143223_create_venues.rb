class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
	  t.string :name
	  t.integer :country_id
	  t.string :city, :null => false
	  t.string :surface, :default => 'Glass'
	  t.string :image

    end
  end
end
