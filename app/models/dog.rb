class Dog < ApplicationRecord
    has_many :employees

    def self.find_owners(dog)
        owners = Employee.select { |employee| employee.dog_id == dog.id}
    end

end
