class Person < ApplicationRecord
  has_many :gifts, dependent: :destroy
end
