class Result < ActiveRecord::Base
  attr_accessible :comment, :date, :opponent_id, :player_id, :round_id, :set1o, :set1p, :set2o, :set2p, :set3o, :set3p, :set4o, :set4p, :set5o, :set5p, :tournament_id, :sequence
  belongs_to :tournament
  belongs_to :round
  belongs_to :player
  belongs_to :opponent, :class_name => 'Player'
  default_scope :order => 'date DESC'
	after_save :assign_sequence
	
	private
	def assign_sequence
		update_column(:sequence, 1000 - id)
	end
	
end
