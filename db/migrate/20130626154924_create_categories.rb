class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
 	 	t.string :name, :default => 'Grand Slam'
  		t.integer :venue_id
  		t.float :prize
  		t.integer :points
  		t.string :website
  		t.string :image

    end
  end
end
