require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe 'average song length' do
      before :each do
        @kodak = Artist.create!(name: 'Kodak')
        @cake = @kodak.songs.create!(title: 'Patty Cake', length: 200, play_count: 500)
        @flockin = @kodak.songs.create!(title: 'No Flockin', length: 201, play_count: 500)
        @gremlin = @kodak.songs.create!(title: 'Gremlin', length: 201, play_count: 500)
      end
      it 'returns average song length' do
        expect(@kodak.average_song_length.round(2)).to eq(200.67)
      end
    end
  end
end
