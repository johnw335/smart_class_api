class AttendanceController < ApplicationController
  protect_from_forgery except: :json_object


  def show
    puts params

    @studentEmail = params[:email]
    puts "***********"
    puts @studentEmail
    puts "***********"
    @userClass = params[:myClass]

    myStudent = Student.find_by(email: @studentEmail)
    myClass = Classname.find_by(name: @userClass)

    @newAttendance = Attendance.create!(student: myStudent, classname: myClass)

    if @newAttendance != nil
      puts "There was student data passed here"
      render :json => "200"
    else
      puts "I didnt make an attendance for some reason"
      render :json => "Sorry I couldn't make an attendance"
   end


  end

end