# myapp.rb
require 'sinatra'
require "net/http"
require "uri"

get '/' do
  puts params
  puts "CODE:"
  puts params[:code]
  
  uri = URI.parse("https://api.quizlet.com/oauth/token")


  body = {
    "client_id" => "d4Xqwsr4GS",
    "grant_type" => "authorization_code",
    "code" => params[:code],
    "redirect_uri" => "https://parrophrase.herokuapp.com/"
  }

  http = Net::HTTP.new(uri.host, uri.port)

  request = Net::HTTP::Post.new(uri.request_uri)
  request.set_form_data(body)

  request["Authorization"] = "Basic YjZPBwZGBuGQ5UyYsJCGZaG9YYchxwpzsbKhJKTT"
  request["Content-Type"]  = "application/x-www-form-urlencoded; charset=UTF-8"


  response = http.request(request)

  puts "RESPONSE:"
  puts response.message

  'Hello World'
end
