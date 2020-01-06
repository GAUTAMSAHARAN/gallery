class ApplicationController < ActionController::Base
   before_action :getcategory
   protect_from_forgery with: :exception
   include SessionsHelper
private
 def getcategory
  @navcategory=Category.all;
 end
end
