json.array!(@adverts) do |advert|
  json.extract! advert, :id, :email, :title, :body, :category
  json.url advert_url(advert, format: :json)
end
