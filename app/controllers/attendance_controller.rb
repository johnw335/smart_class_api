class AttendanceController < ApplicationController
  protect_from_forgery except: :json_object


  def show
    puts "I made it here"
    @student = params[:student]
    if @student != nil
      puts "There was student data passed here"
     render :json => "200"
  end

end