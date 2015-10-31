figure_category_list = [
  :celebrities,
  :athletes, 
  :intellectuals, 
  :artists_and_writers,
  :musicians,
  :political_figures,
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
  #name, category, image, description
  ['Benjamin Franklin', 
    :historical_figures, 
    {url: 'benjamin_franklin.jpg'},
    'Founding Father, Inventor, Statesman'
  ],
  [
    'Katy Perry',
    :musicians,
    {url: 'katy_perry.jpg'},
    'Kissed a Girl and Liked It'
  ],
  [
    'Leonardo DiCaprio',
    :celebrities,
    {url: 'leonardo_dicaprio.jpg'},
    'Actor'
  ],
  [
    'Jonah Hill',
    :celebrities,
    {url: 'jonah_hill.jpg'},
    'Actor'
  ],
  [
    'Matt Bellamy',
    :musicians,
    {url: 'matt_bellamy.jpg'},
    'Frontman, Muse'
  ],
  [
    'RZA',
    :musicians,
    {url: 'rza.jpg'},
    'Rapper, Wu-Tang Clan'
  ],
  [
    'David Heinemeier Hansson',
    :intellectuals,
    {url: 'dhh.png'},
    'Creator, Ruby on Rails'
  ],
  [
    'Curtis Jackson',
    :musicians,
    {url: 'fifty.jpg'},
    'Rapper 50 Cent'
  ],
  [
    'Dave Chappelle',
    :celebrities,
    {url: 'dave_chappelle.jpg'},
    'Comedian'
  ],
  [
    'Ray Kurzweil',
    :intellectuals,
    {url: 'kurzweil.jpg'},
    'Author, The Singularity Is Near'
  ],
  [
    'James Hetfield',
    :musicians,
    {url: 'james_hetfield.jpg'},
    'Singer, Metallica'
  ],
  [
    'Bob Dylan',
    :musicians,
    {url: 'dylan.jpg'},
    'Musician'
  ],
  [
    'Bob Marley',
    :musicians,
    {url: 'bob_marley.jpg'},
    'Musician and Rastafarian'
  ],
  [
    'Zach de la Rocha',
    :musicians,
    {url: 'zach_de_la_rocha.jpg'},
    'Singer, Rage Against the Machine'
  ],
  [
    'Laura Jane Grace',
    :musicians,
    {url: 'laura_jane_grace.jpg'},
    'Singer, Against Me!'
  ],
  [
    'Tony Robbins',
    :celebrities,
    {url: 'tony_robbins.jpg'},
    'Motivational Speaker'
  ],
  [
    'Pitbull',
    :musicians,
    {url: 'pitbull.jpg'},
    'Artist'
  ],
  [
    'Steve Jobs',
    :intellectuals,
    {url: 'steve_jobs.jpg'},
    'Founder, Apple Computer'
  ],
  [
    'Bill Gates',
    :intellectuals,
    {url: 'bill_gates.jpg'},
    'Founder, Microsoft'
  ],
  [
    'Matt Damon',
    :musicians,
    {url: 'matt_damon.jpg'},
    'Actor'
  ],
  [
    'Ben Affleck',
    :musicians,
    {url: 'ben_affleck.jpg'},
    'Actor'
  ],
  [
    'Kate Hudson',
    :celebrities,
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
    :musicians,
    {url: 'jay_z.jpg'},
    'Rapper'
  ],
  [
    'Beyonce Knowles',
    :musicians,
    {url: 'beyonce.jpg'},
    'Artist'
  ],
  [
    'Kobe Bryant',
    :athletes,
    {url: 'kobe_bryant.jpg'},
    'Shooting Guard, Los Angeles Lakers'
  ],
  [
    'LeBron James',
    :celebrities,
    {url: 'lebron_james.jpg'},
    'Forward, Cleveland Cavaliers'
  ],
  [
    'Peter Thiel',
    :intellectuals,
    {url: 'peter_thiel.jpg'},
    'Founder, Paypal'
  ],
  [
    'Warren Buffett',
    :intellectuals,
    {url: 'warren_buffett.jpg'},
    'Investor'
  ],
  [
    'Charlie Munger',
    :intellectuals,
    {url: 'charlie_munger.jpg'},
    'Investment Partner of Warren Buffett'
  ],
  [
    'Quincy Jones',
    :musicians,
    {url: 'quincy_jones.jpg'},
    'Composer'
  ],
  [
    'Aaron McGruder',
    :intellectuals,
    {url: 'aaron_mcgruder.jpg'},
    'Satirist, The Boondocks'
  ],
  [
    'Ashton Kutcher',
    :celebrities,
    {url: 'ashton_kutcher.jpg'},
    'Actor and Investor'
  ],
  [
    'Snoop Lion',
    :musicians,
    {url: 'snoop_dogg.jpg'},
    'Musician'
  ],
  [
    'Jeff Bezos',
    :intellectuals,
    {url: 'jeff_bezos.jpg'},
    'CEO, Amazon.com'
  ],
  [
    'Larry Page',
    :intellectuals,
    {url: 'larry_page.jpg'},
    'CEO, Google'
  ],
  [
    'Common',
    :musicians,
    {url: 'common.JPG'},
    'Rapper'
  ],
  [
    'Peanut Butter Wolf',
    :musicians,
    {url: 'peanut_butter_wolf.jpg'},
    "Founder, Stones Throw Records"
  ],
  [
    'J Dilla',
    :musicians,
    {url: 'j_dilla.jpg'},
    'Hip-hop Producer'
  ],
  [
    'James Pants',
    :musicians,
    {url: 'james_pants.jpg'},
    'Indie DJ'
  ],
  [
    "Conan O'Brien",
    :celebrities,
    {url: 'conan.jpg'},
    "Host, Late Night with Conan O'Brien"
  ],
  [
    'Arnold Schwarzenegger',
    :celebrities,
    {url: 'arnold.jpg'},
    'Bodybuilder, Actor, Politician'
  ],
  [
    'Tyler the Creator',
    :musicians,
    {url: 'tyler.jpg'},
    'Rapper, Odd Future'
  ],
  [
    'Earl Sweatshirt',
    :musicians,
    {url: 'earl_sweatshirt.jpg'},
    'Rapper, Odd Future'
  ],
  [
    'Tim Bergling',
    :musicians,
    {url: 'avicii.jpg'},
    'Avicii'
  ],
  [
    'BJ Fogg',
    :intellectuals,
    {url: 'bj_fogg.jpg'},
    'Professor of Persuasive Technology, Stanford University'
  ],
  [
    'Tim Ferriss',
    :intellectuals,
    {url: 'tim_ferriss.jpg'},
    'Author, The Four-Hour Workweek, Body, Chef'
  ],
  [
    'Seth Rogen',
    :celebrities,
    {url: 'seth_rogen.jpg'},
    'Actor'
  ],
  [
    'James Franco',
    :celebrities,
    {url: 'james_franco.jpg'},
    'Actor, "Professor"'
  ],
  [
    'Carl Cox',
    :musicians,
    {url: 'carl_cox.jpg'},
    'British House DJ'
  ],
  [
    'Steve Aoki',
    :musicians,
    {url: 'steve_aoki.jpg'},
    'DJ, Producer'
  ],
  [
    'Benny Benassi',
    :musicians,
    {url: 'benny_benassi.jpg'},
    'DJ, Satisfaction'
  ],
  [
    'Ann Coulter',
    :intellectuals,
    {url: 'ann_coulter.jpg'},
    'Political Commentator'
  ],
  [
    'Scott Mescudi',
    :musicians,
    {url: 'kid_cudi.jpg'},
    'Kid Cudi'
  ],
  [
    'Paul Rudd',
    :celebrities,
    {url: 'paul_rudd.jpg'},
    'Actor'
  ],
  [
    'Tom Brady',
    :athletes,
    {url: 'tom_brady.jpg'},
    'Quarterback, New England Patriots'
  ],
  [
    'Peyton Manning',
    :athletes,
    {url: 'peyton_manning.jpg'},
    'Quarterback, Denver Broncos'
  ],
  [
    'Eli Manning',
    :athletes,
    {url: 'eli_manning.jpg'},
    'Quarterback, New York Giants'
  ],
  [
    'Steve Carell',
    :celebrities,
    {url: 'steve_carell.jpg'},
    'Actor, Comedian'
  ],
  [
    'Zooey Deschanel',
    :celebrities,
    {url: 'zooey_deschanel.jpg'},
    'Actress, Singer'
  ],
  [
    'Gillian Anderson',
    :celebrities,
    {url: 'gillian_anderson.jpg'},
    'Actress, The X-Files'
  ],
  [
    'Steven Pinker',
    :intellectuals,
    {url: 'steven_pinker.jpg'},
    'Psychologist, Harvard University'
  ],
  [
    'Howard Gardner',
    :intellectuals,
    {url: 'howard_gardner.jpg'},
    'Professor and Author, The Theory of Multiple Intelligences'
  ],
  [
    'Scarlett Johansson',
    :celebrities,
    {url: 'scarlett_johansson.jpg'},
    'Actress'
  ],
  [
    'Joseph Gordon Levitt',
    :celebrities,
    {url: 'joseph_gordon_levitt.png'},
    'Actor'
  ],
  [
    'James Harden',
    :athletes,
    {url: 'james_harden.jpg'},
    'Shooting Guard, Houston Rockets'
  ],
  [
    'Usher',
    :musicians,
    {url: 'usher.jpg'},
    'RnB Singer, Dancer'
  ],
  [
    'Russell Brand',
    :celebrities,
    {url: 'russell_brand.jpg'},
    'Actor, Comedian'
  ],
  [
    'Winston Churchill',
    :political_figures,
    {url: 'winston_churchill.jpg'},
    '"Tact is the ability to tell someone to go to hell in such a way that they look forward to the trip."'
  ],
  [
    'Bill Clinton',
    :political_figures,
    {url: 'bill_clinton.jpg'},
    'Founder, Clinton Foundation'
  ],
  [
    'Martin Scorcese',
    :celebrities,
    {url: 'martin_scorcese.jpg'},
    'Filmmaker'
  ],
  [
    'George W. Bush',
    :political_figures,
    {url: 'george_w_bush.jpg'},
    '43rd President of the United States'
  ],
  [
    'Hillary Clinton',
    :political_figures,
    {url: 'hillary_clinton.jpg'},
    'Candidate, 45th President of the United States'
  ],
  [
    'Mahatma Mohandas Gandhi',
    :political_figures,
    {url: 'gandhi.jpg'},
    'Revolutionary'
  ],
  [
    'Che Guevara',
    :political_figures,
    {url: 'che_guevara.jpg'},
    'Revolutionary'
  ],
  [
    'Malcolm X',
    :political_figures,
    {url: 'malcolm_x.jpg'},
    'Minister, Activist'
  ],
  [
    'Stephen Colbert',
    :celebrities,
    {url: 'stephen_colbert.jpg'},
    'Comedian, Host'
  ],
  [
    'John Stewart',
    :celebrities,
    {url: 'jon_stewart.jpg'},
    'Comedian, Anchor'
  ],
  [
    'Leonardo da Vinci',
    :intellectuals,
    {url: 'leonardo_da_vinci.jpg'},
    'Renaissance Man'
  ],
  [
    'Hunter S. Thompson',
    :artists_and_writers,
    {url: 'hunter_s_thompson.jpg'},
    'Author, "Fear and Loathing in Las Vegas"'
  ],
  [
    'Mark Twain',
    :artists_and_writers,
    {url: 'mark_twain.jpg'},
    'Author, Satirist'
  ],
  [
    'Kurt Vonnegut',
    :artists_and_writers,
    {url: 'kurt_vonnegut.jpg'},
    'Author'
  ],
  [
    'Salvador Dali',
    :artists_and_writers,
    {url: 'dali.jpg'},
    'Painter, Surrealist'
  ],
]

figures = figure_list.map do |name, category, image_attrs, description=""|
  
  Figure.create!(name: name, 
                figure_category: FigureCategory.find_by(name: category), 
                images_attributes: [image_attrs], 
                description: description
                )
end