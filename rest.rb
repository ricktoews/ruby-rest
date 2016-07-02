#!/usr/local/bin/ruby

require 'sinatra'
require 'json'

get '/tri/:n' do
	out = {
		"tri" => tri_lte(params[:n])
	}
	out.to_json
end

def tri(n)
	n*(n+1)/2
end

def tri_lte(max)
	max = max.to_i
	tris = []
	i = 1
	begin
		tmp = tri(i)
		if (tmp <= max)
			tris.push(tmp)
		end
		i = i + 1
	end while tmp <= max
	tris
end
