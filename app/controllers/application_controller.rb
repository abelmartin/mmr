class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prevent_caching

  protected

  def prevent_caching
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "0"
  end
end
