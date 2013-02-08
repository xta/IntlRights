class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @country = Country.find_by_alpha2( params[:country].upcase )
    @video = Video.find(params[:id], :include => :policies, :conditions => { :policies => { :country_id => @country.id } }) if @country
  end

  def country
    @country = Country.find_by_alpha2( params[:iso_code].upcase )
    @videos = Video.all(:include => :policies, :conditions => { :policies => { :country_id => @country.id } }) if @country
  end

end
