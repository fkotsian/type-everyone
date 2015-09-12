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
    'Founder, 37 Signals; Creator, Ruby on Rails'
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
    'Common',
    :musicians,
    {url: 'common.JPG'},
    'Truthfully I want to rhyme like Common Sense'
  ],
  [
    'Peanut Butter Wolf',
    :musicians,
    {url: 'peanut_butter_wolf.jpg'},
    'aka Chris Manak - Founder, Stones Throw Records'
  ],
  [
    'J Dilla',
    :musicians,
    {url: 'j_dilla.jpg'},
    'American Hip-hop producer - beloved as "Producers Producer"'
  ],
  [
    'James Pants',
    :musicians,
    {url: 'james_pants.jpg'},
  ],
  [
    "Conan O'Brien",
    :celebrities,
    {url: 'conan.jpg'},
  ],
  [
    'Arnold Schwarzenegger',
    :celebrities,
    {url: 'arnold.jpg'},
  ],
  [
    'Tyler the Creator',
    :musicians,
    {url: 'tyler.jpg'},
    'Odd Future'
  ],
  [
    'Earl Sweatshirt',
    :musicians,
    {url: 'earl_sweatshirt.jpg'},
    'Odd Future'
  ],
  [
    'Tim Bergling',
    :musicians,
    {url: 'avicii.jpg'},
    'AKA Avicii'
  ],
  [
    'BJ Fogg',
    :intellectuals,
    {url: 'bj_fogg.jpg'},
    'Professor of Persuasive Technology, Stanford University; Founder, behaviormodel.org'
  ],
  [
    'Tim Ferriss',
    :intellectuals,
    {url: 'tim_ferriss.jpg'},
    'Marketer; Author, The Four-Hour Workweek, The Four-Hour Body, The Four-Hour Chef'
  ],
  [
    'Seth Rogen',
    :celebrities,
    {url: 'seth_rogen.jpg'},
    'The Best'
  ],
  [
    'James Franco',
    :celebrities,
    {url: 'james_franco.jpg'},
    'You may remember us from such films as The Interview'
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
  ],
  [
    'Benny Benassi',
    :musicians,
    {url: 'benny_benassi.jpg'},
  ],
  [
    'Ann Coulter',
    :intellectuals,
    {url: 'ann_coulter.jpg'},
  ],
  [
    'Scott Mescudi',
    :musicians,
    {url: 'kid_cudi.jpg'},
    'AKA Kid Cudi'
  ],
  [
    'Paul Rudd',
    :celebrities,
    {url: 'paul_rudd.jpg'},
  ],
  [
    'Tom Brady',
    :athletes,
    {url: 'tom_brady.jpg'},
  ],
  [
    'Peyton Manning',
    :athletes,
    {url: 'peyton_manning.jpg'},
  ],
  [
    'Eli Manning',
    :athletes,
    {url: 'eli_manning.jpg'},
  ],
  [
    'Steve Carell',
    :celebrities,
    {url: 'steve_carell.jpg'},
  ],
  [
    'Zooey Deschanel',
    :celebrities,
    {url: 'zooey_deschanel.jpg'},
  ],
  [
    'Gillian Anderson',
    :celebrities,
    {url: 'gillian_anderson.jpg'},
  ],
  [
    'Steven Pinker',
    :intellectuals,
    {url: 'steven_pinker.jpg'},
    'Experimental Psychologist and Social Critic, Harvard University'
  ],
  [
    'Howard Gardner',
    :intellectuals,
    {url: 'howard_gardner.jpg'},
    'Professor of Cognition and Education, Harvard University; Creator of the theory of Multiple Intelligences'
  ],
  [
    'Scarlett Johansson',
    :celebrities,
    {url: 'scarlett_johansson.jpg'},
  ],
  [
    'Joseph Gordon Levitt',
    :celebrities,
    {url: 'joseph_gordon_levitt.jpg'},
  ],
  [
    'James Harden',
    :athletes,
    {url: 'james_harden.jpg'},
    'Currently of the Houston Rockets'
  ],
  [
    'Usher',
    :musicians,
    {url: 'usher.jpg'}
  ],
  [
    'Russell Brand',
    :celebrities,
    {url: 'russell_brand.jpg'}
  ],
  [
    'Winston Churchill',
    :political_figures,
    {url: 'winston_churchill.jpg'},
    "Tact is the ability to tell someone to go to hell in such a way that they look forward to the trip."
  ],
  [
    'Bill Clinton',
    :political_figures,
    {url: 'bill_clinton.jpg'}
  ],
  [
    'Martin Scorcese',
    :celebrities,
    {url: 'martin_scorcese.jpg'}
  ],
  [
    'George W. Bush',
    :political_figures,
    {url: 'george_w_bush.jpg'}
  ],
  [
    'Hillary Clinton',
    :political_figures,
    {url: 'hillary_clinton.jpg'}
  ],
  [
    'Mahatma Mohandas Gandhi',
    :political_figures,
    {url: 'gandhi.jpg'}
  ],
  [
    'Che Guevara',
    :political_figures,
    {url: 'che_guevara.jpg'}
  ],
  [
    'Malcolm X',
    :political_figures,
    {url: 'malcolm_x.jpg'}
  ],
  [
    'Stephen Colbert',
    :celebrities,
    {url: 'stephen_colbert.jpg'},
    'As seen on The Colbert Report'
  ],
  [
    'John Stewart',
    :celebrities,
    {url: 'jon_stewart.jpg'},
    'Of the Daily Show'
  ],
  [
    'Leonardo da Vinci',
    :intellectuals,
    {url: 'leonardo_da_vinci.jpg'}
  ],
  [
    'Hunter S. Thompson',
    :artists_and_writers,
    {url: 'hunter_s_thompson.jpg'},
    'Gonzo journalist, author, "Fear and Loathing in Las Vegas"'
  ],
  [
    'Mark Twain',
    :artists_and_writers,
    {url: 'mark_twain.jpg'}
  ],
  [
    'Kurt Vonnegut',
    :artists_and_writers,
    {url: 'kurt_vonnegut.jpg'}
  ],
  [
    'Salvador Dali',
    :artists_and_writers,
    {url: 'dali.jpg'}
  ],
]

figures = figure_list.map do |name, category, image_attrs, affiliation|
  aff = affiliation || nil
  
  Figure.create(name: name, 
                affiliation: aff,
                figure_category: FigureCategory.find_by(name: category), 
                images_attributes: [image_attrs])
end