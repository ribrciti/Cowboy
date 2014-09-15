class Movie < ActiveRecord::Base
	has_many :reviews, :dependent => :destroy
	
	validates_presence_of :name, :director
	validates_numericality_of :year, :length, greater_than: 0
	validates_uniqueness_of :name, message: "all ready used, try again!"
	#validates_length_of :format, maximum: 5, minimum: 2

	paginates_per 5

	def proper_name	
		name.titleize
	end

end
