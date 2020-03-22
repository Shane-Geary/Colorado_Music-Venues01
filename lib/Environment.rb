require_relative "./Colorado_Music_Venues/version"
require_relative "./Colorado_Music_Venues/cli"
require_relative "./Colorado_Music_Venues/scraper"
require_relative "./Colorado_Music_Venues/venue"
require_relative "./Colorado_Music_Venues/info"

require 'nokogiri'
require 'open-uri'
require 'pry'

module ColoradoMusicVenues
  class Error < StandardError; end
end
