module Restfulie::Client
  module Feature
    Dir["#{File.dirname(__FILE__)}/http/*.rb"].each {|f| autoload File.basename(f)[0..-4].camelize.to_sym, f }
  end
end
