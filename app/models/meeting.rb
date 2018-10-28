class Meeting < ApplicationRecord
  belongs_to :speaker

  # validates :title, :agenda, presence: true, uniqueness: true, length: {minimum: 5}
end
