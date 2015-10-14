Rails.application.routes.draw do

    root 'welcome#index'

    get "attendance/" => "attendance#show", :defaults => { :format => :json }

    put "attendance/" => "attendance#show", :defaults => { :format => :json }
end
