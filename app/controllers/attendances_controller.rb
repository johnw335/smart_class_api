class AttendancesController < ApplicationController
  protect_from_forgery except: :json_object


  def create
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


  def index
    @students_email_list = []
    students_list = []
    @teacher = Teacher.find_by(id: session[:teacher_id])
    puts @teacher
    @my_class = Classname.where(teacher: @teacher)
    @attendances = Attendance.where(classname: @my_class)
    puts @attendances
    @attendances.each do |t|
      stud = Student.where(t.student)
      puts stud
      puts "******"
      # @students_email_list << stud.email
    end
    # students_list.each do |student|
    #   stud = Student.where(id: student)
    #   @student_email_list << stud.email
    # end

    puts @attendances.count
  end


end

