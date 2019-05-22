class Employee < ApplicationRecord
	belongs_to :dog

	validates :title, uniqueness: true
	validates :alias, uniqueness: true, if: :none?

	def none?
		self.alias != "none" ? true : false
	end
		

	
end
