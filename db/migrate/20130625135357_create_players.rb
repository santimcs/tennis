class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
	  	t.string :first_name
  		t.string :last_name
  		t.integer :country_id
  		t.date :birthdate
  		t.float :height
  		t.string :gender
  		t.integer :rank
  		t.string :image

      t.timestamps
    end
  end
end
