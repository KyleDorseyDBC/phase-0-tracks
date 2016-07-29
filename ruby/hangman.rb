# HANGMAN   

class Hangman
  attr_reader :remaining_guesses
  attr_accessor :correct_answer

  def initialize
    @correct_answer = '' 
    @guess_count = 0
    @guessed_array = []
    @remaining_guesses = 0
  end

  def word_to_guess(word)
    @correct_answer = word.split('')
    @remaining_guesses = @correct_answer.length
    @correct_answer.length.to_i.times {|blank| (@guessed_array << "_").join(" ")}  
  end

  def solved_portion(letter)
    @guessed_array.insert(@correct_answer.index(letter), letter)
    @guessed_array.delete_at(@correct_answer.index(letter) + 1)
  end

  def check_guess(letter)
    if @guessed_array.include?(letter) == true
      "You have already guessed this letter, this wont take a guess"
    elsif @correct_answer.include?(letter) == true
      solved_portion(letter)
      @remaining_guesses += -1
      printer
    else
      @remaining_guesses += -1
      printer
    end
  end

  def printer
    if @guess_count >= @remaining_guesses
      if @guessed_array.include?('_')
        "Sorry, better luck next time"
        #I hand wanted to use 'abort' to end the program, to prevent continual guessing.
        #However abort would also end the rspec file from running the following tests
      else
        "Congrats you won! The word was #{@correct_answer.join(' ').delete(' ').capitalize}"
        #abort
      end
    else
      "Your current progress is : #{@guessed_array.join(' ')}, You have #{@remaining_guesses} guesses left!"
    end
  end
end

# hangman = Hangman.new
# hangman.word_to_guess("sandwich")
# p hangman.check_guess("f")
# p hangman.check_guess("p")
# p hangman.check_guess("z")
# p hangman.check_guess("d")
# p hangman.check_guess("w")
# p hangman.check_guess("i")
# p hangman.check_guess("c")
# p hangman.check_guess("h")
# p hangman.check_guess("r")
# p hangman.check_guess("q")
# puts "--------------------------------------------------"
# hangman2 = Hangman.new
# p hangman2.word_to_guess("nom")
# p hangman2.check_guess("n")
# p hangman2.check_guess("o")
# p hangman2.check_guess("m")

# WORD GUESSING GAME
# "hangman" 

# Driver code handles inputs and ouputs
# User inputs a word or phrase


# Limit number of guesses, guessed related to length of the word.
#   use .length to mesure the length of the word, they are allowed the same amount of guesses
#   initialize a guess variable at 0
#   each guess adds to guess var until its = word.length then break program

# repeated guesses do not count as a guess
#   create guess array, check agianst it if current guess is in the array before counting as a guess
#   if its in the current guess array reprompt to guess
#   otherwise report incorrect guess
#     current correct guesses on the word
#   otherwise check to see if correct guess


# If a correct letter is guessed the output should show the progress of correct guesses so far
#   fill in letter in correct index of correct array
#   print out current stats of the word to be guessing


# message when they win or loose
#   if word in solved print out word and congrats, along with guessed letters
#   else print out better luck next time, with list of guesses
