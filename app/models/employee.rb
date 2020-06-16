class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :alias, uniqueness: true, if: :none?

  belongs_to :dog

  def none?
    self.alias != 'none' ? true : false
  end
  #validates uniqueness of conditions where

  def full_name
    "#{self.first_name} "+"#{self.last_name}"
  end
end
