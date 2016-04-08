class Character
  attr_accessor :name,
                :height,
                :mass,
                :hair_color,
                :skin_color,
                :eye_color,
                :birth_year,
                :gender
  def self.new_from_api(api_hash)
    character = Character.new
    character.name = api_hash["name"]
    character.height = api_hash["height"]
    character.mass = api_hash["mass"]
    character.hair_color = api_hash["hair_color"]
    character.skin_color = api_hash["skin_color"]
    character.eye_color = api_hash["eye_color"]
    character.birth_year = api_hash["birth_year"]
    character.gender = api_hash["gender"]
    character
  end
end
