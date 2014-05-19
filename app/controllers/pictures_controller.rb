class PicturesController < ApplicationController
  def show
    @the_picture = Picture.find(params[:id])
    @the_source = @the_picture.source
    @the_caption = @the_picture.caption
  end

  def index
    @list_of_pictures = Picture.all
  end

 def new
  end

 def create
  @picture = Picture.new
  @picture.caption = params[:caption]
  @picture.source = params[:source]
  @picture.save
redirect_to("/all_pictures")
  end

 def destroy
  @picture = Picture.find(params[:id]).destroy
redirect_to("/all_pictures")
  end

 def destroy

  end


end
