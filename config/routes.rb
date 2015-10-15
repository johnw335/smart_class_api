Rails.application.routes.draw do

    root 'welcome#index'

    get "attendance/" => "attendance#create", :defaults => { :format => :json }

    post "attendance/" => "attendance#create", :defaults => { :format => :json }

    get "student/" => "student#create", :defaults => { :format => :json }

    post "student/" => "student#create", :defaults => { :format => :json }
end
