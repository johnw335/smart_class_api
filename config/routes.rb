Rails.application.routes.draw do

    root 'welcome#index'

    get "attendance/:student" => "attendance#show", :defaults => { :format => :json }

end
