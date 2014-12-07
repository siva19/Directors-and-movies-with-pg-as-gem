json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :cast, :ratting, :director_id
  json.url movie_url(movie, format: :json)
end
