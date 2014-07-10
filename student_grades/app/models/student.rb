class Student < ActiveRecord::Base

	has_many :grades
	accepts_nested_attributes_for :grades, :reject_if => lambda { |a| a[:name].blank? || a[:score].blank?  }, :allow_destroy => true
	validates_presence_of  :name,:university_id

	def average
		k = 0.0
		grades.each{|x|  k = k + x.score}
		k = k/grades.size
	end

end
