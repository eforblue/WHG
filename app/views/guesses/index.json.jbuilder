json.array!(@guesses) do |guess|
  json.extract! guess, :id, :weight, :height
  json.url guess_url(guess, format: :json)
end
