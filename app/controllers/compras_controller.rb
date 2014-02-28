class ComprasController < ApplicationController
  
  require 'meli'
  require 'rubygems'
  require 'json'

  def helpers
    meli = Meli.new(8236306362714188, "924QU1qPMcfZKVOQhQYxgul82wZ7zAgf")
      @response = meli.get("/users/89130799")      
      @res = JSON.parse @response.body
      @id = @res["id"] 
      @seudonimo = @res["seudonimo"] 
  end
  
  def index     
    redirectUrl = meli.auth_url("http://www.")
  end
  
  def show
      meli = Meli.new(8236306362714188, "924QU1qPMcfZKVOQhQYxgul82wZ7zAgf")
      @response = meli.get("/users/15709215")      
      @res = JSON.parse @response.body
      @id = @res["id"] 
      @seudonimo = @res["nickname"] 
      @compra = Compra.create(seudonimo: @seudonimo, order_id: @id)
  end
  
  def prueba
       meli = Meli.new(8236306362714188, "924QU1qPMcfZKVOQhQYxgul82wZ7zAgf")
      @response = meli.get("/users/15709215")      
      @res = JSON.parse @response.body
      @id = @res["id"] 
      @seudonimo = @res["nickname"] 
      @compra = Compra.create(seudonimo: @seudonimo, order_id: @id)
  end
  
  end
  
