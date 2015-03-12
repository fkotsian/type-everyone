figure_category_list = [
  :celebrities,
  :athletes, 
  :intellectuals, 
  :musicians,
  :public_figures,
  :historical_figures,
  :fictional_characters
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
  #name, category, image
  ['Benjamin Franklin', 
    :historical_figures, 
    {url: 'benjamin_franklin.jpg'}
  ],
  [
    'Katy Perry',
    :musicians,
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
  ],
  [
    'Matt Bellamy',
    :musicians,
    {url: 'matt_bellamy.jpg'},
    'Muse'
  ],
  [
    'RZA',
    :musicians,
    {url: 'rza.jpg'},
    'Wu-Tang Clan'
  ],
  [
    'David Heinemeier Hansson',
    :intellectuals,
    {url: 'dhh.jpg'},
    '37 Signals and Ruby on Rails'
  ],
  [
    'Curtis Jackson',
    :musicians,
    {url: 'fifty.jpg'},
    'AKA 50 Cent'
  ],
  [
    'Dave Chappelle',
    :celebrities,
    {url: 'dave_chappelle.jpg'},
    'AKA 50 Cent'
  ],
  [
    'Ray Kurzweil',
    :intellectuals,
    {url: 'kurzweil.jpg'},
    'Author of The Singularity Is Near'
  ],
  [
    'James Hetfield',
    :musicians,
    {url: 'james_hetfield.jpg'},
    'Metallica'
  ],
  [
    'Bob Dylan',
    :musicians,
    {url: 'dylan.jpg'},
  ],
  [
    'Bob Marley',
    :musicians,
    {url: 'bob_marley.jpg'},
  ],
  [
    'Zach de la Rocha',
    :musicians,
    {url: 'zach_de_la_rocha.jpg'},
    'Rage Against the Machine'
  ],
  [
    'Laura Jane Grace',
    :musicians,
    {url: 'laura_jane_grace.jpg'},
    'Lead Singer of Against Me!'
  ],
  [
    'Tony Robbins',
    :celebrities,
    {url: 'tony_robbins.jpg'},
  ],
  [
    'Pitbull',
    :musicians,
    {url: 'pitbull.jpg'},
  ],
  [
    'Steve Jobs',
    :intellectuals,
    {url: 'steve_jobs.jpg'},
  ],
  [
    'Bill Gates',
    :intellectuals,
    {url: 'bill_gates.jpg'},
  ],
  [
    'Matt Damon',
    :musicians,
    {url: 'matt_damon.jpg'},
  ],
  [
    'Ben Affleck',
    :musicians,
    {url: 'ben_affleck.jpg'},
  ],
  [
    'Kate Hudson',
    :celebrities,
    {url: 'kate_hudson.jpg'},
  ],
  [
    'Donald Rumsfeld',
    :public_figures,
    {url: 'donald_rumsfeld.jpg'},
  ],
  [
    'Jay-Z',
    :musicians,
    {url: 'jay_z.jpg'},
  ],
  [
    'Beyonce Knowles',
    :musicians,
    {url: 'beyonce.jpg'},
  ],
  [
    'Kobe Bryant',
    :athletes,
    {url: 'kobe_bryant.jpg'},
  ],
  [
    'LeBron James',
    :celebrities,
    {url: 'lebron_james.jpg'},
  ],
  [
    'Peter Thiel',
    :intellectuals,
    {url: 'peter_thiel.jpg'},
  ],
  [
    'Warren Buffett',
    :intellectuals,
    {url: 'warren_buffett.jpg'},
  ],
  [
    'Charlie Munger',
    :intellectuals,
    {url: 'charlie_munger.jpg'},
    'Longtime investment Partner of Warren Buffett'
  ],
  [
    'Quincy Jones',
    :musicians,
    {url: 'quincy_jones.jpg'},
  ],
  [
    'Aaron McGruder',
    :intellectuals,
    {url: 'aaron_mcgruder.jpg'},
    'Satirist and Creator, The Boondocks'
  ],
  [
    'Ashton Kutcher',
    :celebrities,
    {url: 'ashton_kutcher.jpg'},
  ],
  [
    'Snoop Lion',
    :musicians,
    {url: 'snoop_dogg.jpg'},
  ],
  [
    'Jeff Bezos',
    :intellectuals,
    {url: 'jeff_bezos.jpg'},
  ],
  [
    'Larry Page',
    :intellectuals,
    {url: 'larry_page.jpg'},
  ],
  [
    'Sergey Brin',
    :intellectuals,
    {url: 'sergey_brin.jpg'},
  ],
]

figures = figure_list.map do |name, category, image_attrs, affiliation|
  aff = affiliation || nil
  
  Figure.create(name: name, 
                affiliation: aff,
                figure_category: FigureCategory.find_by(name: category), 
                images_attributes: [image_attrs])
end