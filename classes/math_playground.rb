require './classes/payload'
payload = Payload.new

class MathPlayground
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
    payload.output_json(tris)
  end
end
