class Student < ActiveRecord::Base
  has_many :attendances
  has_many :classnames
end