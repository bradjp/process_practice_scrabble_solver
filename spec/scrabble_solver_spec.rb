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
  it 'returns a score of 0 when passed escaped characters' do
    scrabble = Scrabble.new(" \t\n")
    expect(scrabble.score).to eq(0)
  end
  it 'returns a score of 0 when passed nil' do
    scrabble = Scrabble.new(nil)
    expect(scrabble.score).to eq(0)
  end
  it "returns a score of 1 when passed 'a'" do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end
  it "returns a score of 4 when passed 'f'" do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq(4)
  end
  it "returns a score of 6 when passed 'street'" do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to eq(6)
  end
  it "returns a score of 22 when passed 'quirky'" do
    scrabble = Scrabble.new('quirky')
    expect(scrabble.score).to eq(22)
  end
  it "returns a score of 41 when passed 'OXYPHENBUTAZONE'" do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to eq(41)
  end
end
