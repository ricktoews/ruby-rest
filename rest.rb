require 'sinatra'
require 'json'
require './classes/math_playground'
require './classes/payload'

math = MathPlayground.new
payload = Payload.new
get '/tri/:n' do
  payload.json(math.tri_lte(params[:n]))
end
