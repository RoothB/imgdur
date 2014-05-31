class MainController < ApplicationController
  def index
  end

  def upload
    @image = Image.new
  end
 
end

