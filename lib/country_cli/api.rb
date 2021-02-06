#https://restcountries.eu/rest/v2/region{region}
#https://restcountries.eu/rest/v2/callingcode/{callingcode}
#https://restcountries.eu/rest/v2/alpha/{name}



class Api
  attr_accessor :url

  def initialize(url)
    @url = "https://restcountries.eu/rest/v2"
  end


  def search_country_by_name(name)
  req_url="#{url}/name/#{name}"
  data = HTTParty.get(req_url)
  
  country_hash = {
    name: data.first["name"],
    region: data.first["region"],
    population: data.first["population"],
    callingCodes: data.first["callingCodes"],
    borders: data.first["borders"],
    subregion: data.first["subregion"],
    capital: data.first["capital"],
    languages: data.first["languages"],
    currencies: data.first["currencies"]
    
  }

  country = Country.new(country_hash)
  #binding.pry
  #puts country.currencies

   end

end


#api = Api.new("https://restcountries.eu/rest/v2")

#api.search_country_by_name("USA")



