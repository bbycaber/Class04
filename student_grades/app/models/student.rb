class Student < ActiveRecord::Base

	has_many :grades
	accepts_nested_attributes_for :grades, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
