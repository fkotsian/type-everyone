figure_category_list = [
  :celebrities,
  :sports, 
  :scientists, 
  :musicians,
  :historical_figures,
  :fictional_characters
]

figure_categories = figure_category_list.map do |category_name|
  FigureCategory.create(name: category_name)
end

figure_list = [
  #name, category, image
  ['Benjamin Franklin', 
    :historical_figures, 
    {url: 'benjamin_franklin.jpg'}
  ],
  [
    'Katy Perry',
    :celebrities,
    {url: 'katy_perry.jpg'}
  ],
  [
    'Leonardo DiCaprio',
    :celebrities,
    {url: 'leonardo_dicaprio.jpg'}
  ],
  [
    'Jonah Hill',
    :celebrities,
    {url: 'jonah_hill.jpg'}
  ]
]

figures = figure_list.map do |name, category, image_attrs|
  Figure.create(name: name, 
                figure_category: FigureCategory.find_by(name: category), 
                images_attributes: [image_attrs])
end