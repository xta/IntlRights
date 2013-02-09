class VideosController < ApplicationController

  def index
    @videos = Video.includes(:countries, :policies).page(params[:page])
  end

  def show
    @country = Country.by_iso( params[:iso_code] )
    @video = Video.includes(:policies).by_id_and_country(params[:id], @country) if @country
  end

  def country
    @country = Country.by_iso( params[:iso_code] )
    @videos = Video.includes(:policies).by_country(@country).page(params[:page]) if @country
  end

end
