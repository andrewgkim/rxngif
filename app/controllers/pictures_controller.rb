class PicturesController < ApplicationController
  def show
    @the_picture = Picture.find(params[:id])
    @the_source = @the_picture.source
    @the_caption = @the_picture.caption

  end
end
