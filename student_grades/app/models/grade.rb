class Grade < ActiveRecord::Base
	validates_presence_of  :name,:score,:subject_id

  belongs_to :student
end
