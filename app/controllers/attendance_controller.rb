class AttendanceController < ApplicationController
  protect_from_forgery except: :json_object


  def create
    p params
    @studentEmail = params[:email]
    # puts "***********"
    # puts @studentEmail
    # puts "***********"
    @userClass = params[:myClass]
    # puts "*****userClass"
    # puts @userClass

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
        puts "I didnt make an attendance for some reason"
        puts "***** student *****"
        puts myStudent
        puts "***** student *****"
        puts "***** class *****"
        puts myClass
        puts "***** class *****"

        render :json => "Sorry I couldn't make an attendance"
     end
   end


  end

end