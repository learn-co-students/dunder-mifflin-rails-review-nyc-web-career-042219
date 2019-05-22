class Dog < ApplicationRecord
	has_many :employees

	def self.order_dogs
		self.all.sort_by {|dog| dog.employees.length }.reverse
	end

end
