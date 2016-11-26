# myapp.rb
require 'sinatra'

get '/' do
  puts params

  'Hello World'
end
