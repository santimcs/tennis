class AddSequenceToResults < ActiveRecord::Migration
  def change
    add_column :results, :sequence, :integer
  end
end
