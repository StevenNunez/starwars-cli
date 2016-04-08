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
    results.flatten!

    return results unless block_given?
    results.map {|result| yield(result)}
  end
end
