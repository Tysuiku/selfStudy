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

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
        return false
    end

    @attempted_chars << char

    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)

    @remaining_incorrect_guesses -= 1 if matches.empty? 

    true
  end
  
  def ask_user_for_guess
    puts "Enter a char"
    guess = gets.chomp()
    self.try_guess(guess)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
        return true
    end

    false
  end

  def lose?
    if @remaining_incorrect_guesses == 0 
      puts "LOSE"
        return true
    end

  false
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    end

    false
  end

end
