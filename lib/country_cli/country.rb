require "pry"

class Country 

attr_accessor  :region, :name, :subregion, :borders, :capital, :languages
attr_reader :population, :callingCodes, :currencies
   
@@all = []
   
def initialize(hash)
  hash.each do |k,v|
    self.send("#{k}=", v)
   
end 
@@all << self
end 

   
def save 
  @@all << self
end 
   
def self.all 
  @@all
end

def info_country
  puts "region: #{self.region}"
  puts "population: #{self.population}"
  puts "callingCodes: #{self.callingCodes}"
  puts "borders: #{self.borders}"
  puts "subregion: #{self.subregion}"
  puts "capital: #{self.capital}"
  puts "languages: #{self.languages}"
  puts "currencies: #{self.currencies}"
end

private

def name=(name)
  @name = name
end

def population=(population)
  @population = population  
end

def callingCodes=(callingCodes)
    @callingCodes = callingCodes 
end

def currencies=(currencies)
  @currencies = currencies
end

end
   
