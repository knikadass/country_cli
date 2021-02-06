
#COUNTRY_URL = "https://restcountries.eu/rest/v2"

#CountryCli::CLI

class Cli

    def country_exists?(country)
        puts "in database exists"
        if country
           puts "Would you like to receive information on #{country.name}"
           input2 = gets.strip.downcase
           if input2 == "yes"
           country.info_country
           end
        end
    end

    

    def get_database_by_name(input, country_api)
        if input ≠ "list"
          country = country_api.search_country_by_name(input)
          country_exists?(country)
        end
    end

    def run
      puts "Welcome to the country database"
      country_api = Api.new()
      input = nil
      while input != "exit"
        puts "please pick a country? or type 'country' to see the information"
        input = gets.strip.downcase
        if input != nil || input != "exit" || input != "list"
          #puts "looking in the database. input:#{input}"
          country = country_api.search_country_by_name(input)
          country_exists?(country)
        elsif input == "list"
          Country.all.each {|country| puts country.name}
        elsif input == "exit"
        return   
    end
end 
     puts "Comeback again!"
    end
  end
  


