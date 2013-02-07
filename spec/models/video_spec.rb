require 'spec_helper'

describe Video do

  before(:each) do
    @video = FactoryGirl.create(:video)
    6.times { @video.countries << FactoryGirl.create(:country) }
  end

  context 'for a video' do

    describe '.policies' do
      it 'lists all policies' do
        @video.policies.size.should eql(6)
      end
    end

    describe '.countries' do
      it 'lists all countries' do
        @video.countries.size.should eql(6)
      end
    end

  end

end
