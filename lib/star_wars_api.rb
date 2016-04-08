class StarWarsApi
  def self.get_characters
    results = []
    url = 'http://swapi.co/api/people/'
    begin
      response = RestClient.get(url)
      parsed = JSON.parse(response)
      results << parsed["results"]
      url = parsed["next"]
    end while parsed["next"]
    results.flatten
  end
end
