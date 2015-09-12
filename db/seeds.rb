puts "SEEDING #{Rails.env.upcase} DATABASE"
load(Rails.root.join( 'db', 'seeds', "#{Rails.env.downcase}.rb"))
