require 'sinatra'
require 'json'
require './classes/math_playground'
require './classes/payload'
payload = Payload.new

math = MathPlayground.new

get '/tri/:n' do
  payload.output_json(math.tri_lte(params[:n]))
end
