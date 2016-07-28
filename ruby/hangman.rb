# HANGMAN   

class Hangman
  attr_reader :guess_count

  def initialize(correct_answer)
    @correct_answer = correct_answer.split('')  #I wouldn't use an attr method for this because I am passing it through, right?
    @guess_count = 0
    @guessed_array = []
  end

  def number_of_guesses
    total_guesses = @correct_answer.length
    remaining_guesses = total_guesses - @guess_count #later add a method to subtract as each letter is guessed
    remaining_guesses
  end

  def create_empty_array
    empty_array_length = @correct_answer.length.to_i
    empty_array_length.times {|blank| @guessed_array << "_"}
    @guessed_array.join(" ") #returns out "_ _ _ _ _ _ _  _"
    p @guessed_array
  end

  def solved_portion(letter)
    letter_index = @correct_answer.index(letter)
    @guessed_array.insert(letter_index, letter)
    @guessed_array.delete_at(letter_index + 1)
    p @guessed_array
  end

  def check_guess(letter)
    if @guessed_array.include?(letter) == true
      #you have already guessed this letter, dosent take a guess
    elsif @correct_answer.include?(letter) == true
      solved_portion(letter)
      #set it into the array with blanks
      @guess_count += 1

    else
      @guess_count += 1
      #incorrect guess
    end
  end
end

hangman = Hangman.new("sandwich")
hangman.number_of_guesses
hangman.create_empty_array
hangman.check_guess("a")
