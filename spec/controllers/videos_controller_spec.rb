require 'spec_helper'

describe VideosController do

  context 'for HTML' do

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
        get :show, :id => 10, :iso_code => 'US'
      end

      it { should render_template("show") }
    end

  end

  context 'for JSON' do

    describe '.index' do
      before :each do 
        get 'index', :format => :json
      end

      it "should be successful" do
        response.should be_success
      end
    end

    describe '.country' do
      before :each do 
        get :country, :iso_code => 'US', :format => :json
      end

      it "should be successful" do
        response.should be_success
      end
    end

    describe '.show' do
      before :each do
        get :show, :id => 10, :iso_code => 'US', :format => :json
      end

      it "should be successful" do
        response.should be_success
      end
    end

  end

end
