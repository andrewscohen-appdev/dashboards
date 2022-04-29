class ApplicationController < ActionController::Base
  def home
    render({ :template => "application_templates/application.html.erb" })
  end
end
