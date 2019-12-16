class Course < ApplicationRecord
has_many :notes
validates :name, length: { minimum: 5 }
end
