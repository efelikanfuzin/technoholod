json.array!(@films) do |film|
  json.extract! film, :id, :name, :info
  json.url film_url(film, format: :json)
end
