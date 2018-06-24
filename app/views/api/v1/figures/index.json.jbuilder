json.array! @figures do |figure|
  json.id figure.id
  json.name figure.name
  json.description figure.description
  json.category figure.category
  json.image figure.rand_image_url
end
