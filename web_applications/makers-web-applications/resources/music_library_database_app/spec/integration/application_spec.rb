require "spec_helper"
require "rack/test"
require_relative '../../app'

def reset_artists_table
  seed_sql = File.read('spec/seeds/artists_seeds.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
  connection.exec(seed_sql)
end

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  before(:each) do 
    reset_artists_table
  end

  context "GET /albums" do
    xit "returns all albums" do
      response = get("albums")

      expect(response.status).to eq(200)
      expect(response.body).to include("Title: Lover")
      expect(response.body).to include("Released: 2019")
      expect(response.body).to include("Title: Ring Ring")
      expect(response.body).to include("Released: 1973")
      expect(response.body).to include("Title: Bossanova")
      expect(response.body).to include("Released: 1990")
    end
  end

  context "GET /albums" do
    xit "returns the list of albums" do
      response = get("albums")

      expect(response.status).to eq(200)
      expect(response.body).to include('<a href="/albums/1">Doolittle</a>')
      expect(response.body).to include('<a href="/albums/2">Surfer Rosa</a>')
      expect(response.body).to include('<a href="/albums/3">Waterloo</a>')
    end
  end

  context "GET /albums/:id" do
    xit "returns info about album 1" do
      response = get("/albums/1")

      expect(response.status).to eq(200)
      expect(response.body).to include("<h1>Doolittle</h1>")
      expect(response.body).to include("Release year: 1989")
      expect(response.body).to include("Artist: Pixies")
    end

    it "returns info about album 2" do
      response = get("/albums/2")

      expect(response.status).to eq(200)
      expect(response.body).to include("<h1>Surfer Rosa</h1>")
      expect(response.body).to include("Release year: 1988")
      expect(response.body).to include("Artist: Pixies")
    end
  end

  context "GET /albums/new" do
    it "retuns the form page to add a new album" do
      response = get("albums/new")

      expect(response.status).to eq(200)
      expect(response.body).to include('<form action="/albums" method="POST">')
      expect(response.body).to include('<input type="text" name="title">')
      expect(response.body).to include('<input type="text" name="release_year">')
      expect(response.body).to include('<input type="text" name="artist_id">')
    end
  end

  context "POST /albums" do
    it "validates album parameters" do
      response = post(
        "/albums",
      invalid_artist_title: "OK Computer",
      another_invalid_thing: 123
    )

    expect(response.status).to eq(400)
    end

    xit "creates a new album" do
      response = post("/albums", title: "Voyage", release_year: 2022, artist_id: 2)
      expect(response.status).to eq(200)
      expect(response.body).to eq("")

      response = get("/albums")

      expect(response.status).to eq(200)
      expect(response.body).to include("Voyage")
    end
  end

  context "GET /artists" do
    xit "returns all artists" do
      response = get("/artists")

      expect(response.status).to eq(200)
      expect(response.body).to eq("Pixies, ABBA, Taylor Swift, Nina Simone")
    end
  end

  context "GET /artists/:id" do
    it "returns info about artist 2" do
      response = get("/artists/2")

      expect(response.status).to eq(200)
      expect(response.body).to include("<h1>ABBA</h1>")
      expect(response.body).to include("Genre: Pop")
    end
  end

  context "GET /artists" do
    it "returns the list of artists" do
      response = get("artists")

      expect(response.status).to eq(200)
      expect(response.body).to include('<a href="/artists/1">Pixies</a>')
      expect(response.body).to include('<a href="/artists/2">ABBA</a>')
      expect(response.body).to include('<a href="/artists/3">Taylor Swift</a>')
    end
  end

  context "GET /artists/new" do
    it "retuns the form page to add a new artist" do
      response = get("artists/new")

      expect(response.status).to eq(200)
      expect(response.body).to include('<form action="/artists" method="POST">')
      expect(response.body).to include('<input type="text" name="name">')
      expect(response.body).to include('<input type="text" name="genre">')
    end
  end

  context "POST /artists" do
    xit "creates a new artist" do
      response = post("/artists", name: "Wild nothing", genre: "Indie")
      expect(response.status).to eq(200)
      expect(response.body).to eq("")

      response = get("/artists")

      expect(response.status).to eq(200)
      expect(response.body).to include("Wild nothing")
      expect(response.body).to eq("Pixies, ABBA, Taylor Swift, Nina Simone, Wild nothing")
    end
  end
end