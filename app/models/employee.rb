class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    def self.find_dog(employee)
       dog = Dog.find { |dog| dog.id == employee.dog_id}
    end
end
