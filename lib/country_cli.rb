require "pry"
require "httparty"
require "country_cli/version"
require_relative "./country_cli/country"
require_relative "./country_cli/api"



module CountryCli
    class Error < StandardError; end
end

