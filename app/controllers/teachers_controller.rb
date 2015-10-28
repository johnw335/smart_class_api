class TeachersController < ApplicationController


  def index

  end

  def login
    puts params
    @teacher = Teacher.find_by(email: params[:teacher][:email])
    @password_input = params[:teacher][:password]


    if @teacher and @teacher.password == @password_input
      session[:teacher_id] = @teacher.id
      puts "I made a session"
    else
      puts "I didnt find the teacher"
    end

    redirect_to attendances_index_path
  end

end