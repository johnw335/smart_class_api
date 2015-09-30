class Question < ActiveRecord::Base
  belongs_to :attendance
  belongs_to :teacher
end