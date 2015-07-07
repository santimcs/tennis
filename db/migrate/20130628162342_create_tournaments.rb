class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
		t.string :name
  		t.integer :year
  		t.integer :category_id
  		t.date :from_date
  		t.date :to_date
  		t.integer :venue_id
  		t.float :prize
  		t.string :website
  		t.string :image

      t.timestamps
    end
  end
end
