Rails.application.routes.draw do

    root 'welcome#index'

    get "attendance/create" => "attendance#show", :defaults => { :format => :json }

    post "attendance/create" => "attendance#show", :defaults => { :format => :json }
end
