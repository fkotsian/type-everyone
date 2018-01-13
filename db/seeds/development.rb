figure_category_list = [
  :musicians_and_artists,
  :celebrities_actors_and_athletes,
  :politicians_scientists_and_historical_figures, 
  :tv_movie_and_fictional_characters
]

figure_categories = figure_category_list.map do |category_name|
  FigureCategory.create(name: category_name)
end

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

vote_types = vote_type_list.map do |type|
  VoteType.create(name: type)
end

figure_list = [
  #name, category, image, description
  ['Benjamin Franklin', 
    :politicians_scientists_and_historical_figures, 
    {url: 'benjamin_franklin.jpg'},
    'Founding Father, Inventor, Statesman'
  ],
]

figures = figure_list.map do |name, category, image_attrs, description=""|
  figure = Figure.find_or_initialize_by(
    name: name, 
    figure_category: FigureCategory.find_by(name: category), 
    description: description,
  )

  figure_image = figure.images.build(image_attrs) unless figure_image && figure_image.id

  figure.save!
  figure_image.save! if figure && figure_image
end
