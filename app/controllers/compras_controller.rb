class ComprasController < ApplicationController
  
  require 'meli'
  require 'rubygems'
  require 'json'

  
  def index
      meli = Meli.new(8236306362714188, "924QU1qPMcfZKVOQhQYxgul82wZ7zAgf")
      @response = meli.get("/users/89130799")      
      @res = JSON.parse @response.body
      @res1 = @res["id"] 
      #render :action => 'ml'
  end
  
end