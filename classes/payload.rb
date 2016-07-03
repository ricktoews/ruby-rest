class Payload
  def output_json(data)
    out = {
      "data" => data
    }
    out.to_json
  end
end
