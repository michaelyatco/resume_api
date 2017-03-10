class Student < ApplicationRecord
  has_many :capstones
  has_many :educations
  has_many :skills
  has_many :experiences
end
