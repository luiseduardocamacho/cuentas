class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def index
     meli = Meli.new(8236306362714188, "924QU1qPMcfZKVOQhQYxgul82wZ7zAgf")
      @response = meli.get("/users/89130799")      
      @res = JSON.parse @response.body
      @res1 = @res["id"] 
      #render :action => 'ml'
  end
end
