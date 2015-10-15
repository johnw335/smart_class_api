class StudentController < ApplicationController
  #protect_from_forgery except: :json_object

  def create
    @studentEmail = params[:email]
    if Student.find_by(email: @studentEmail) != nil
      puts "That student already exists"
    else
      # hardcoding password because we should be doing frontend validations and I don't want to remigrate on rails and heroku.
      Student.create!(email: @studentEmail, password: 'password')
      render :json => "200"
    end

  end

end