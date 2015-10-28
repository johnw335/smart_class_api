class WelcomeController < ApplicationController

  def index
    redirect_to teachers_path
  end

end
