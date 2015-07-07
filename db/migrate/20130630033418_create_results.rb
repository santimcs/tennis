class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
  t.integer :tournament_id
  t.integer :round_id
  t.integer :player_id
  t.integer :opponent_id
  t.integer :set1p, :default => 0
  t.integer :set1o, :default => 0
  t.integer :set2p, :default => 0
  t.integer :set2o, :default => 0
  t.integer :set3p
  t.integer :set3o
  t.integer :set4p
  t.integer :set4o
  t.integer :set5p
  t.integer :set5o
  t.date :date
  t.text:comment

      t.timestamps
    end
  end
end
