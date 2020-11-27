vote_type_list = [
  :isfp,
  :isfj,
  :esfp,
  :esfj,
  :istp,
  :istj,
  :estp,
  :estj,
  :infp,
  :infj,
  :enfp,
  :enfj,
  :intp,
  :intj,
  :entp,
  :entj
]

vote_type_list.map do |type|
  VoteType.create(name: type)
end

mythoi = [
  {
    name: 'Game of Thrones',
    image_url: 'https://abrilveja.files.wordpress.com/2016/11/tronodeferro.jpg?quality=70&strip=all%201378469&strip=info',
    category: Mythos.send("TV Shows"),
  },
  {
    name: 'Family Guy',
    image_url: 'https://cdn.newsbusters.org/images/family_guy_0.jpg',
    category: Mythos.send("TV Shows"),
  },
  {
    name: 'Atlanta',
    image_url: 'https://cdn-images-1.medium.com/max/1600/1*GY9Xu6iv0D-UpFKvS3MLVQ.jpeg',
    category: Mythos.send("TV Shows"),
  },
  {
    name: 'Curb Your Enthusiasm',
    image_url: 'http://2.bp.blogspot.com/-t92HoyP8bSQ/URo2NqyqbDI/AAAAAAAAACI/Hl12BSRgH9s/s1600/51Q8+oy0jlL._SX500_.jpg',
    category: Mythos.send("TV Shows"),
  },
  {
    name: 'The White House',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/White_House_DC.JPG',
    category: Mythos.send("Politicians"),
  },
]
mythoi.map do |mythos|
  Mythos.find_or_create_by(mythos)
end

figure_list = [
  #name, category, image, description
  [
    'Benjamin Franklin',
    Figure.figure_category_ids[:politicians_scientists_and_historical_figures],
    {url: 'http://www.mulierchile.com/benjamin-franklin-wallpaper/benjamin-franklin-wallpaper-004.jpg'},
    'Founding Father, Inventor, Statesman'
  ],
]

figure_list.map do |name, category, image_attrs, description=""|
  figure = Figure.find_or_initialize_by(
    name: name,
    figure_category_id: category,
    description: description,
  )

  figure_image = figure.images.build(image_attrs) unless figure_image && figure_image.id

  figure.save!
  figure_image.save! if figure && figure_image
end
