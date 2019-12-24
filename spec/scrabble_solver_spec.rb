require 'scrabble_solver'

describe 'Scrabble' do
  it 'accepts a word' do
    scrabble = Scrabble.new('hello')
    expect(scrabble.word).to eq('hello')
  end
  it 'returns a score of 0 when passed an empty string' do
  scrabble = Scrabble.new('')
  expect(scrabble.score).to eq(0)
  end
end