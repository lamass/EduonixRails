class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include AuthenticationConcern
  include LocalesConcern

  rescue_from ActiveRecord::RecordNotFound do
    flash[:danger] = 'Cannot find this record...'
    redirect_to root_path
  end
end
