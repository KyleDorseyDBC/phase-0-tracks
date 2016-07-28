# HANGMAN   

class Hangman
  def initialize(correct_answer)
    @correct_answer = correct_answer  #I wouldn't use an attr method for this because I am passing it through, right?
    @guessed_array = []
  end

  def number_of_guesses
    total_guesses = @correct_answer.length
    total_guesses #later add a method to subtract as each letter is guessed
  end

  def create_empty_array
    empty_array_length = @correct_answer.length.to_i
    empty_array_length.times {|blank| @guessed_array << "_"}
    @guessed_array.join(" ")
  end




  def initial_print
    #print out number of guesses and the blank array
  end
end

hangman = Hangman.new("sandwich")
hangman.number_of_guesses
p hangman.create_empty_array
