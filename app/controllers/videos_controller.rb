class VideosController < ApplicationController

  def index
    @videos = Video.includes(:countries).page(params[:page])

    respond_to do |format|
      format.html
      format.json { render json: @videos }
    end
  end

  def show
    @country = Country.by_iso( params[:iso_code] )
    @video = Video.by_id_and_country(params[:id], @country) if @country

    respond_to do |format|
      format.html
      format.json { render json: @video }
    end
  end

  def country
    @country = Country.by_iso( params[:iso_code] )
    @videos = Video.by_country(@country).page(params[:page]) if @country

    respond_to do |format|
      format.html
      format.json { render json: @videos }
    end
  end

end
