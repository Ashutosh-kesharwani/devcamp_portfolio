module SetSource
  extend ActiveSupport::Concern
  included do
    before_action :set_source
  end
  def set_source
    session[:source] = params[:q] if params[:q]
  end
end

#Session is not very secure , so don't store sensitive data in session
#Session is used to store data that you want to persist across requests

#http://127.0.0.1:3000/portfolio/4?q=facebook to use session we have to write value this way
## Here q ki value me jao aaya hai use ham session[:source] me store kar rahe hain and 
## abb isse ham kahi pe bhi use kar sakte hain


  