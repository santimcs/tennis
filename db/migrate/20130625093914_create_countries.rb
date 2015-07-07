class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
	  	t.string :alpha2
  		t.string :alpha3
  		t.integer :num3
  		t.string :name    
    end
  end
end
