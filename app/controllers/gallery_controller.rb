class GalleryController < ApplicationController
  def index
  	@images = Image.all
  end

  def rating
  	image_id = params[:image_id]
  	vote_magnitude = params[:vote]
  	image=Image.find(image_id)
  	if image.rating.nil?
  		image.rating=0
  	end
  image.rating += vote_magnitude.to_i
  image.save
  redirect_to gallery_path, notice: "You voted"
  end
end


