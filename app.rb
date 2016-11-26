# myapp.rb
require 'sinatra'

get '/' do
  print params
  print "\n"

  'Hello World'
end
