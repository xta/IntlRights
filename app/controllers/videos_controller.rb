class VideosController < ApplicationController
  caches_page :index

  def index
    @videos = Video.includes(:countries).page(params[:page])

    respond_to do |format|
      format.html
      format.json { render json: @videos }
    end
  end

  def show
    @country = Country.by_iso( params[:iso_code] )
    @video = Video.by_id_and_country(params[:id], @country)

    respond_to do |format|
      format.html
      format.json { render json: @video }
    end
  end

  def country
    @country = Country.by_iso( params[:iso_code] )
    @videos = Video.available_by_country(@country).page(params[:page])

    respond_to do |format|
      format.html
      format.json { render json: @videos }
    end
  end

end
