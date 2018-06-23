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
  [
    'Benjamin Franklin',
    Figure.figure_category_ids[:politicians_scientists_and_historical_figures],
    {url: 'benjamin_franklin.jpg'},
    'Founding Father, Inventor, Statesman'
  ],
]

figures = figure_list.map do |name, category, image_attrs, description=""|
  figure = Figure.find_or_initialize_by(
    name: name,
    figure_category_id: category,
    description: description,
  )

  figure_image = figure.images.build(image_attrs) unless figure_image && figure_image.id

  figure.save!
  figure_image.save! if figure && figure_image
end
