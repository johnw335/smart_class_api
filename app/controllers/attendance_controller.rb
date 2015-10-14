class AttendanceController < ApplicationController
  protect_from_forgery except: :json_object


  def show
    puts params

    @studentEmail = params[:email]
    @userClass = params[:myClass]

    myStudent = Student.find_by(email: @studentEmail)
    myClass = Classname.find(@userClass)

    @newAttendance = Attendance.create!(student: myStudent, classname: myClass)

    if @newAttendance != nil
      puts "There was student data passed here"
      render :json => "200"
    else
      render :json => "Sorry I couldn't make an attendance"
   end


  end

end