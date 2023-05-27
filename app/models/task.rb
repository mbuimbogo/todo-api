class Task < ApplicationRecord
    validates :description, length: { maximum: 500 }
    validates :description, presence: true
end
