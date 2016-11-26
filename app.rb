# myapp.rb
require "net/http"
require 'sinatra'

get '/' do
  puts params

  uri = URI.parse("https://api.quizlet.com/oauth/token")


  body = {
    "client_id" => "d4Xqwsr4GS",
    "grant_type" => "authorization_code",
    "code" => params[:code],
    "redirect_uri" => "https://parrophrase.herokuapp.com/"
  }

  response = Net::HTTP.post_form(uri, body)

  request["Authorization"] = "Basic YjZPBwZGBuGQ5UyYsJCGZaG9YYchxwpzsbKhJKTT"
  request["Content-Type"]  = "application/x-www-form-urlencoded; charset=UTF-8"


  response = http.request(request)

  puts "RESPONSE:"
  puts response

  'Hello World'
end
