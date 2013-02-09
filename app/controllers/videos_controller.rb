class VideosController < ApplicationController

  def index
    @videos = Video.includes(:countries).page(params[:page])
  end

  def show
    @country = Country.by_iso( params[:iso_code] )
    @video = Video.by_id_and_country(params[:id], @country) if @country
  end

  def country
    @country = Country.by_iso( params[:iso_code] )
    @videos = Video.by_country(@country).page(params[:page]) if @country
  end

end
