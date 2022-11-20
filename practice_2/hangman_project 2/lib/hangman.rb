class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  
  def self.random_word
    DICTIONARY.sample
  end

  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length){ "_" }
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    arr = []
    @secret_word.each_char.with_index do |ele, i|
      if ele == char 
        arr << i
      end
    end

    arr
  end

  def fill_indices(char, arr)
    arr.each do |idx|
    @guess_word[idx] = char
    end
  end

  
end
