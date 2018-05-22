json.array! @figures do |figure|
  json.id figure.id
  json.name figure.name
  json.figure_category figure.figure_category.name
  json.image figure.rand_image_url
end
