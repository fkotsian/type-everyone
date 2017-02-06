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
  [
    'Katy Perry',
    :musicians_and_artists,
    {url: 'katy_perry.jpg'},
    'Kissed a Girl and Liked It'
  ],
  [
    'Leonardo DiCaprio',
    :celebrities_actors_and_athletes,
    {url: 'leonardo_dicaprio.jpg'},
    'Actor'
  ],
  [
    'Jonah Hill',
    :celebrities_actors_and_athletes,
    {url: 'jonah_hill.jpg'},
    'Actor'
  ],
  [
    'Matt Bellamy',
    :musicians_and_artists,
    {url: 'matt_bellamy.jpg'},
    'Frontman, Muse'
  ],
  [
    'RZA',
    :musicians_and_artists,
    {url: 'rza.jpg'},
    'Rapper, Wu-Tang Clan'
  ],
  [
    'David Heinemeier Hansson',
    :politicians_scientists_and_historical_figures,
    {url: 'dhh.png'},
    'Creator, Ruby on Rails'
  ],
  [
    'Curtis Jackson',
    :musicians_and_artists,
    {url: 'fifty.jpg'},
    'Rapper 50 Cent'
  ],
  [
    'Dave Chappelle',
    :celebrities_actors_and_athletes,
    {url: 'dave_chappelle.jpg'},
    'Comedian'
  ],
  [
    'Ray Kurzweil',
    :politicians_scientists_and_historical_figures,
    {url: 'kurzweil.jpg'},
    'Author, The Singularity Is Near'
  ],
  [
    'James Hetfield',
    :musicians_and_artists,
    {url: 'james_hetfield.jpg'},
    'Singer, Metallica'
  ],
  [
    'Bob Dylan',
    :musicians_and_artists,
    {url: 'dylan.jpg'},
    'Musician'
  ],
  [
    'Bob Marley',
    :musicians_and_artists,
    {url: 'bob_marley.jpg'},
    'Musician and Rastafarian'
  ],
  [
    'Zach de la Rocha',
    :musicians_and_artists,
    {url: 'zach_de_la_rocha.jpg'},
    'Singer, Rage Against the Machine'
  ],
  [
    'Laura Jane Grace',
    :musicians_and_artists,
    {url: 'laura_jane_grace.jpg'},
    'Singer, Against Me!'
  ],
  [
    'Tony Robbins',
    :celebrities_actors_and_athletes,
    {url: 'tony_robbins.jpg'},
    'Motivational Speaker'
  ],
  [
    'Pitbull',
    :musicians_and_artists,
    {url: 'pitbull.jpg'},
    'Artist'
  ],
  [
    'Steve Jobs',
    :politicians_scientists_and_historical_figures,
    {url: 'steve_jobs.jpg'},
    'Founder, Apple Computer'
  ],
  [
    'Bill Gates',
    :politicians_scientists_and_historical_figures,
    {url: 'bill_gates.jpg'},
    'Founder, Microsoft'
  ],
  [
    'Matt Damon',
    :musicians_and_artists,
    {url: 'matt_damon.jpg'},
    'Actor'
  ],
  [
    'Ben Affleck',
    :musicians_and_artists,
    {url: 'ben_affleck.jpg'},
    'Actor'
  ],
  [
    'Kate Hudson',
    :celebrities_actors_and_athletes,
    {url: 'kate_hudson.jpg'},
    'Actress'
  ],
  [
    'Donald Rumsfeld',
    :public_figures,
    {url: 'donald_rumsfeld.jpg'},
    '21st Secretary of Defense, United States'
  ],
  [
    'Jay-Z',
    :musicians_and_artists,
    {url: 'jay_z.jpg'},
    'Rapper'
  ],
  [
    'Beyonce Knowles',
    :musicians_and_artists,
    {url: 'beyonce.jpg'},
    'Artist'
  ],
  [
    'Kobe Bryant',
    :celebrities_actors_and_athletes,
    {url: 'kobe_bryant.jpg'},
    'Shooting Guard, Los Angeles Lakers'
  ],
  [
    'LeBron James',
    :celebrities_actors_and_athletes,
    {url: 'lebron_james.jpg'},
    'Forward, Cleveland Cavaliers'
  ],
  [
    'Peter Thiel',
    :politicians_scientists_and_historical_figures,
    {url: 'peter_thiel.jpg'},
    'Founder, Paypal'
  ],
  [
    'Warren Buffett',
    :politicians_scientists_and_historical_figures,
    {url: 'warren_buffett.jpg'},
    'Investor'
  ],
  [
    'Charlie Munger',
    :politicians_scientists_and_historical_figures,
    {url: 'charlie_munger.jpg'},
    'Investment Partner of Warren Buffett'
  ],
  [
    'Quincy Jones',
    :musicians_and_artists,
    {url: 'quincy_jones.jpg'},
    'Composer'
  ],
  [
    'Aaron McGruder',
    :politicians_scientists_and_historical_figures,
    {url: 'aaron_mcgruder.jpg'},
    'Satirist, The Boondocks'
  ],
  [
    'Ashton Kutcher',
    :celebrities_actors_and_athletes,
    {url: 'ashton_kutcher.jpg'},
    'Actor and Investor'
  ],
  [
    'Snoop Lion',
    :musicians_and_artists,
    {url: 'snoop_dogg.jpg'},
    'Musician'
  ],
  [
    'Jeff Bezos',
    :politicians_scientists_and_historical_figures,
    {url: 'jeff_bezos.jpg'},
    'CEO, Amazon.com'
  ],
  [
    'Larry Page',
    :politicians_scientists_and_historical_figures,
    {url: 'larry_page.jpg'},
    'CEO, Google'
  ],
  [
    'Common',
    :musicians_and_artists,
    {url: 'common.JPG'},
    'Rapper'
  ],
  [
    'Peanut Butter Wolf',
    :musicians_and_artists,
    {url: 'peanut_butter_wolf.jpg'},
    "Founder, Stones Throw Records"
  ],
  [
    'J Dilla',
    :musicians_and_artists,
    {url: 'j_dilla.jpg'},
    'Hip-hop Producer'
  ],
  [
    'James Pants',
    :musicians_and_artists,
    {url: 'james_pants.jpg'},
    'Indie DJ'
  ],
  [
    "Conan O'Brien",
    :celebrities_actors_and_athletes,
    {url: 'conan.jpg'},
    "Host, Late Night with Conan O'Brien"
  ],
  [
    'Arnold Schwarzenegger',
    :celebrities_actors_and_athletes,
    {url: 'arnold.jpg'},
    'Bodybuilder, Actor, Politician'
  ],
  [
    'Tyler the Creator',
    :musicians_and_artists,
    {url: 'tyler.jpg'},
    'Rapper, Odd Future'
  ],
  [
    'Earl Sweatshirt',
    :musicians_and_artists,
    {url: 'earl_sweatshirt.jpg'},
    'Rapper, Odd Future'
  ],
  [
    'Tim Bergling',
    :musicians_and_artists,
    {url: 'avicii.jpg'},
    'Avicii'
  ],
  [
    'BJ Fogg',
    :politicians_scientists_and_historical_figures,
    {url: 'bj_fogg.jpg'},
    'Professor of Persuasive Technology, Stanford University'
  ],
  [
    'Tim Ferriss',
    :politicians_scientists_and_historical_figures,
    {url: 'tim_ferriss.jpg'},
    'Author, The Four-Hour Workweek, Body, Chef'
  ],
  [
    'Seth Rogen',
    :celebrities_actors_and_athletes,
    {url: 'seth_rogen.jpg'},
    'Actor'
  ],
  [
    'James Franco',
    :celebrities_actors_and_athletes,
    {url: 'james_franco.jpg'},
    'Actor, "Professor"'
  ],
  [
    'Carl Cox',
    :musicians_and_artists,
    {url: 'carl_cox.jpg'},
    'British House DJ'
  ],
  [
    'Steve Aoki',
    :musicians_and_artists,
    {url: 'steve_aoki.jpg'},
    'DJ, Producer'
  ],
  [
    'Benny Benassi',
    :musicians_and_artists,
    {url: 'benny_benassi.jpg'},
    'DJ, Satisfaction'
  ],
  [
    'Ann Coulter',
    :politicians_scientists_and_historical_figures,
    {url: 'ann_coulter.jpg'},
    'Political Commentator'
  ],
  [
    'Scott Mescudi',
    :musicians_and_artists,
    {url: 'kid_cudi.jpg'},
    'Kid Cudi'
  ],
  [
    'Paul Rudd',
    :celebrities_actors_and_athletes,
    {url: 'paul_rudd.jpg'},
    'Actor'
  ],
  [
    'Tom Brady',
    :celebrities_actors_and_athletes,
    {url: 'tom_brady.jpg'},
    'Quarterback, New England Patriots'
  ],
  [
    'Peyton Manning',
    :celebrities_actors_and_athletes,
    {url: 'peyton_manning.jpg'},
    'Quarterback, Denver Broncos'
  ],
  [
    'Eli Manning',
    :celebrities_actors_and_athletes,
    {url: 'eli_manning.jpg'},
    'Quarterback, New York Giants'
  ],
  [
    'Steve Carell',
    :celebrities_actors_and_athletes,
    {url: 'steve_carell.jpg'},
    'Actor, Comedian'
  ],
  [
    'Zooey Deschanel',
    :celebrities_actors_and_athletes,
    {url: 'zooey_deschanel.jpg'},
    'Actress, Singer'
  ],
  [
    'Gillian Anderson',
    :celebrities_actors_and_athletes,
    {url: 'gillian_anderson.jpg'},
    'Actress, The X-Files'
  ],
  [
    'Steven Pinker',
    :politicians_scientists_and_historical_figures,
    {url: 'steven_pinker.jpg'},
    'Psychologist, Harvard University'
  ],
  [
    'Howard Gardner',
    :politicians_scientists_and_historical_figures,
    {url: 'howard_gardner.jpg'},
    'Professor and Author, The Theory of Multiple Intelligences'
  ],
  [
    'Scarlett Johansson',
    :celebrities_actors_and_athletes,
    {url: 'scarlett_johansson.jpg'},
    'Actress'
  ],
  [
    'Joseph Gordon Levitt',
    :celebrities_actors_and_athletes,
    {url: 'joseph_gordon_levitt.png'},
    'Actor'
  ],
  [
    'James Harden',
    :celebrities_actors_and_athletes,
    {url: 'james_harden.jpg'},
    'Shooting Guard, Houston Rockets'
  ],
  [
    'Usher',
    :musicians_and_artists,
    {url: 'usher.jpg'},
    'RnB Singer, Dancer'
  ],
  [
    'Russell Brand',
    :celebrities_actors_and_athletes,
    {url: 'russell_brand.jpg'},
    'Actor, Comedian'
  ],
  [
    'Winston Churchill',
    :politicians_scientists_and_historical_figures,
    {url: 'winston_churchill.jpg'},
    '"Tact is the ability to tell someone to go to hell in such a way that they look forward to the trip."'
  ],
  [
    'Bill Clinton',
    :politicians_scientists_and_historical_figures,
    {url: 'bill_clinton.jpg'},
    'Founder, Clinton Foundation'
  ],
  [
    'Martin Scorcese',
    :celebrities_actors_and_athletes,
    {url: 'martin_scorcese.jpg'},
    'Filmmaker'
  ],
  [
    'George W. Bush',
    :politicians_scientists_and_historical_figures,
    {url: 'george_w_bush.jpg'},
    '43rd President of the United States'
  ],
  [
    'Hillary Clinton',
    :politicians_scientists_and_historical_figures,
    {url: 'hillary_clinton.jpg'},
    'Candidate, 45th President of the United States'
  ],
  [
    'Mahatma Mohandas Gandhi',
    :politicians_scientists_and_historical_figures,
    {url: 'gandhi.jpg'},
    'Revolutionary'
  ],
  [
    'Che Guevara',
    :politicians_scientists_and_historical_figures,
    {url: 'che_guevara.jpg'},
    'Revolutionary'
  ],
  [
    'Malcolm X',
    :politicians_scientists_and_historical_figures,
    {url: 'malcolm_x.jpg'},
    'Minister, Activist'
  ],
  [
    'Stephen Colbert',
    :celebrities_actors_and_athletes,
    {url: 'stephen_colbert.jpg'},
    'Comedian, Host'
  ],
  [
    'John Stewart',
    :celebrities_actors_and_athletes,
    {url: 'jon_stewart.jpg'},
    'Comedian, Anchor'
  ],
  [
    'Leonardo da Vinci',
    :politicians_scientists_and_historical_figures,
    {url: 'leonardo_da_vinci.jpg'},
    'Renaissance Man'
  ],
  [
    'Hunter S. Thompson',
    :musicians_and_artists,
    {url: 'hunter_s_thompson.jpg'},
    'Author, "Fear and Loathing in Las Vegas"'
  ],
  [
    'Mark Twain',
    :musicians_and_artists,
    {url: 'mark_twain.jpg'},
    'Author, Satirist'
  ],
  [
    'Kurt Vonnegut',
    :musicians_and_artists,
    {url: 'kurt_vonnegut.jpg'},
    'Author'
  ],
  [
    'Salvador Dali',
    :musicians_and_artists,
    {url: 'dali.jpg'},
    'Painter, Surrealist'
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
