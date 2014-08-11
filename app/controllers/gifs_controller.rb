class GifsController < ApplicationController
  def new
    # @gifs = Gif.all
    @gif = Gif.new
    # @gif = Gif
  end

  def create
    @gif = Gif.create(
    url: params[:gif][:url],
    description: params[:gif][:description],
    )
    if @gif.save
      redirect_to root_path
    else
      render :new
    end

  end

end