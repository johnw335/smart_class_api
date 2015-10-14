class AttendanceController < ApplicationController
  protect_from_forgery except: :json_object


  def create
    p params
    puts "params email"
    puts params[:email]
    puts "params class"
    puts params[:myClass]
    @studentEmail = params[:email]
    @userClass = params[:myClass]
    myStudent = Student.find_by(email: @studentEmail)
    myClass = Classname.find_by(name: @userClass)
    if myStudent == nil || myClass == nil
      puts "one of those was nil"
      render :json => "Sorry, either class or student is incorrect"
    else
      @newAttendance = Attendance.create!(student: myStudent, classname: myClass)

      if @newAttendance != nil
        puts "There was student data passed here"
        render :json => "200"
      else
        render :json => "Sorry I couldn't make an attendance"
     end
   end


  end

end