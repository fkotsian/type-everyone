require 'csv'

namespace :import do
  module ImportFigures
    REQUIRED_HEADERS ||= [
      'Series',
      'Category',
      'Name',
      'Image URL',
    ]
    OPTIONAL_HEADERS ||= [
      'Description',
    ]
    HEADERS ||= REQUIRED_HEADERS + OPTIONAL_HEADERS
  end

  desc ""
  task :figures, [:path_to_csv] => :environment do |t, args|
    lines = File.read(args[:path_to_csv])
    csv = CSV.parse(lines, headers: true)

    validate_headers!(csv.headers)

    csv.each.with_index do |row, i|
      validate_row!(row, i)

      # ensure mythos exists
      m = Mythos.find_or_create_by(
        name: row['Series'],
        category: row['Category'] || Mythos.categories['TV Shows'],
      )
      f = Figure.find_or_create_by(
        name: row['Name'],
        category: Figure.categories[:tv_movie_and_fictional_characters],
        description: row['Description'],
        mythos: m,
      )
      if f
        f.images.build({url: row['Image URL']})
        f.save!
      end
    end
  end

  def validate_row!(row,i)
    ImportFigures::OPTIONAL_HEADERS.each do |h|
      if row[h].length < 1
        raise "Row #{i+1} is empty! Please correct and try again."
      end
    end
  end

  def validate_headers!(headers)
    if headers != ImportFigures::HEADERS
      raise "Expected #{headers} to eq #{ImportFigures::HEADERS}! Please correct headers and try again."
    end
  end
end
