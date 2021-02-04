require "pry"

class Country 

attr_accessor  :region, :name
attr_reader :population, :callingCodes
   
@@all = []
   
def initialize(hash)
  hash.each do |k,v|
    self.send("#{k}=", v)
    #"@#{k}= #{v}"
 #x = "@#{k.to_s} = #{v}"



end 
 @@all << self
end 
   
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

end
   
