class Meeting < ApplicationRecord
  validates :title, :agenda, presence: true, uniqueness: true, length: {minimum: 5}
end
