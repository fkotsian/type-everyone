figure_category_list = [
  :celebrities,
  :athletes, 
  :intellectuals, 
  :artists_and_writers,
  :musicians,
  :political_figures,
  :fictional_characters
]

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

figure_categories = figure_category_list.map do |category_name|
  FigureCategory.create(name: category_name)
end

figure_list = [
  #name, category, image, description
  ['Benjamin Franklin', 
    :historical_figures, 
    {url: 'benjamin_franklin.jpg'}
  ],
]

figures = figure_list.map do |name, category, image_attrs, affiliation|
  aff = affiliation || nil
  
  Figure.create(name: name, 
                affiliation: aff,
                figure_category: FigureCategory.find_by(name: category), 
                images_attributes: [image_attrs])
end