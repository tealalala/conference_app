class Speaker < ApplicationRecord
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }
end
