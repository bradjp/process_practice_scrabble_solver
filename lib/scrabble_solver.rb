class Scrabble
  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def score
    return 0 if @word == nil
    return 0 if @word.match(/[a-z]/) == nil

    letters = @word.split('')

    letter_scores = {'a' => 1, 'b' => 3, 'c' => 3, 'd' => '2', 'e' => 1, 'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8, 'k' => 5,
    'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1, 'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8,
    'y' => 4, 'z' => 10}

    letters.map { |letter| letter_scores[letter] }.inject(:+)
   
  end
  
end