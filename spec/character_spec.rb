RSpec.describe Character do
  it "has a name" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.name).to eq("Luke Skywalker")
  end

  it "has a height" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.height).to eq("172")
  end

  it "has a mass" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.mass).to eq("77")
  end

  it "has a hair color" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.hair_color).to eq("blond")
  end

  it "has a skin color" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.skin_color).to eq("fair")
  end

  it "has a eye color" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.eye_color).to eq("blue")
  end

  it "has a birth year" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.birth_year).to eq("19BBY")
  end

  it "has a gender" do
    luke = Character.new_from_api(luke_hash)
    expect(luke.gender).to eq("male")
  end

  def luke_hash
    {"name"=>"Luke Skywalker",
     "height"=>"172",
     "mass"=>"77",
     "hair_color"=>"blond",
     "skin_color"=>"fair",
     "eye_color"=>"blue",
     "birth_year"=>"19BBY",
     "gender"=>"male",
     "homeworld"=>"http://swapi.co/api/planets/1/",
     "films"=>
      ["http://swapi.co/api/films/6/",
       "http://swapi.co/api/films/3/",
       "http://swapi.co/api/films/2/",
       "http://swapi.co/api/films/1/",
       "http://swapi.co/api/films/7/"],
     "species"=>["http://swapi.co/api/species/1/"],
     "vehicles"=>
      ["http://swapi.co/api/vehicles/14/", "http://swapi.co/api/vehicles/30/"],
     "starships"=>
      ["http://swapi.co/api/starships/12/", "http://swapi.co/api/starships/22/"],
     "created"=>"2014-12-09T13:50:51.644000Z",
     "edited"=>"2014-12-20T21:17:56.891000Z",
     "url"=>"http://swapi.co/api/people/1/"}
  end
end
