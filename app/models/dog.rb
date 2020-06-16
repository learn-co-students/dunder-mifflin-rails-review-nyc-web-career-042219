class Dog < ApplicationRecord
  has_many :employees

  def self.sort
    Dog.all.sort_by do |dog|
      dog.employees.count
    end.reverse
  end

end
