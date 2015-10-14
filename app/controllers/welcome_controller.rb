class WelcomeController < ApplicationController

  def index
    @attendance = Attendance.all
  end

end
