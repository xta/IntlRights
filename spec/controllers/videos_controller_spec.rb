require 'spec_helper'

describe VideosController do

  describe '.index' do
    before :each do 
      get :index
    end

    it { should render_template("index") }
  end

  describe '.country' do
    before :each do 
      get :country, :iso_code => 'US'
    end

    it { should render_template("country") }
  end

  describe '.show' do
    before :each do 
      get :show, :vid => 'Vid00', :country => 'US'
    end

    it { should render_template("show") }
  end

end
