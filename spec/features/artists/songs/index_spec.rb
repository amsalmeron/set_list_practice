require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @kodak = Artist.create!(name: 'Kodak')
    @cake = @kodak.songs.create!(title: 'Patty Cake', length: 200, play_count: 500)
    @flockin = @kodak.songs.create!(title: 'No Flockin', length: 200, play_count: 500)
    @gremlin = @kodak.songs.create!(title: 'Gremlin', length: 202, play_count: 500)
  end
  it 'shows all of the titles fo the songs for the artist' do
    visit "/artists/#{@kodak.id}/songs"

    expect(page).to have_content(@cake.title)
    expect(page).to have_content(@flockin.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@kodak.id}/songs"

    click_on @cake.title

    expect(current_path).to eq("/songs/#{@cake.id}")
  end

  it 'shows average song length for the artist' do
    visit "/artists/#{@kodak.id}/songs"

    expect(page).to have_content("Average Song Length for Kodak: 200.67")
  end
end
