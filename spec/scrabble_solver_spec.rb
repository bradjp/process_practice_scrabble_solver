require 'scrabble_solver'

describe 'Scrabble' do
  it 'accepts a word' do
    scrabble = Scrabble.new('hello')
    expect(scrabble.word).to eq('hello')
  end
end