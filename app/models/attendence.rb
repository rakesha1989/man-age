class Attendence < ActiveRecord::Base

		belongs_to :employee

	validates_presence_of :employee_id, :day
end
