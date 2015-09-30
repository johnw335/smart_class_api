class Attendance < ActiveRecord::Base
  belongs_to :student
  belongs_to :classname
  has_many :questions

end