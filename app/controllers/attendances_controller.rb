class AttendancesController < ApplicationController
  protect_from_forgery except: :json_object

  puts "I made it here"

  def create
    @studentEmail = params[:email]
    @userClass = params[:myClass]
    myStudent = Student.find_by(email: @studentEmail)
    myClass = Classname.find_by(name: @userClass)
    puts "I made it to create!!!!!!!"

    # Attendance.create!(student: myStudent, classname: myClass)

    if myStudent == nil || myClass == nil
      puts "one of those was nil"
      render :json => "Sorry, either class or student is incorrect"
    else
      @newAttendance = Attendance.create!(student: myStudent, classname: myClass)
      puts "I created a new attendance"
      puts @newAttendance.inspect

      if @newAttendance != nil
        puts "There was student data passed here"
        render :json => "200"
      else
        render :json => "Sorry I couldn't make an attendance"

      end
    end
    puts
  end


  def index


    @today_students = []
    students_list = []
    @teacher = Teacher.find_by(id: session[:teacher_id])
    my_class = Classname.where(teacher: @teacher)

    # todayS = Student.find_by(email: "jww335@yahoo.com")
    # if todayS
    #   Attendance.create!(student: todayS, classname: my_class[0])
    # else
    #   myStudent = Student.create!(email: "jww335@yahoo.com", password: "password")
    #   Attendance.create!(student: myStudent, classname: my_class[0])
    # end


    # Attendance.create!(student: myStudent, classname: my_class)
    @attendances = Attendance.where(classname: my_class[0])
    today_day = Time.now.day
    today_month = Time.now.month



    # @attendances.each do |attendance|
    #   if attendance.student
    #     puts true
    #   else
    #     puts attendance.destroy
    #   end
    # end
    @attendances.each do |attendance|
      if attendance.created_at.day == today_day and attendance.created_at.month == today_month
        @today_students << attendance
        puts @today_students.last.student.email
      end
    end

    puts

  end


end

