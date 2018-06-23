require 'rails_helper'

describe 'import:figures' do
  include_context 'rake'

  let(:path_to_csv) { 'spec/fixtures/fake_figure_import.csv' }

  before do
  end

  it 'includes environment' do
    expect(subject.prerequisites).to include('environment')
  end

  it 'creates a Figure with Category and Image' do
    expect {
      subject.invoke(path_to_csv)
    }
      .to change {
      Figure.count
    }
      .from(0)
      .to(1)

    figure = Figure.first
    expect(figure.name).to eq 'Peter Griffin'
    expect(figure.category).to eq :tv_movie_and_fictional_characters.to_s
    expect(figure.description).to eq 'One Funny Dad'
    expect(figure.mythos).to_not eq nil
    expect(figure.mythos.name).to eq 'Family Guy'
    expect(figure.mythos.category).to eq 'TV Shows'
    expect(figure.images.length).to eq 1
  end
end
