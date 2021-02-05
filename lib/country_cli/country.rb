require "pry"

class Country 

attr_accessor  :region, :name, :subregion, :borders, :capital, :languages
attr_reader :population, :callingCodes, :currencies
   
@@all = []
   
def initialize(hash)
  hash.each do |k,v|
    self.send("#{k}=", v)
    #"@#{k}= #{v}"
 #x = "@#{k.to_s} = #{v}"

end 
@@all << self
 #create_callingCodes(self.callingCodes)
 #self.safe
end 

#def create_callingCodes(callingCodes_arr)
 # puts "please wait your data is loading..."
  #api = Api.new
  #callingCodes_objs = callingCodes_arr.map do |country_callingCodes|
   # api.search_country_info_by_callingCodes(country_callingCodes)
    #self.callingCodes = callingCodes_objs
#end
   
def save 
  @@all << self
end 
   
def self.all 
  @@all
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

def self.find_by_callingCodes(input_callingCodes)
  Country.all.select {|country| country.code == input_callingCodes}
end

end
   
