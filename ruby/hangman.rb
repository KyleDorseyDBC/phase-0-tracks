# HANGMAN   

class Hangman
  attr_reader :guess_count

  def initialize(correct_answer)
    @correct_answer = correct_answer.split('')  
    @guess_count = 0
    @guessed_array = []
    number_of_guesses      #Is this bad practice? Having initialize run other methods? 
    create_empty_array      #I added them here so I wouldnt have to call them at the beginning of every rspec test
    printer
  end

  def number_of_guesses
    total_guesses = @correct_answer.length
    @remaining_guesses = total_guesses - @guess_count 
    @remaining_guesses
  end

  def used_a_guess
    @remaining_guesses += -1
    @remaining_guesses
  end

  def create_empty_array
    empty_array_length = @correct_answer.length.to_i
    empty_array_length.times {|blank| @guessed_array << "_"}
    @guessed_array.join(" ")
  end

  def solved_portion(letter)
    letter_index = @correct_answer.index(letter)
    @guessed_array.insert(letter_index, letter)
    @guessed_array.delete_at(letter_index + 1)
  end

  def check_guess(letter)
    if @guessed_array.include?(letter) == true
      "you have already guessed this letter, this wont take a guess"
    elsif @correct_answer.include?(letter) == true
      solved_portion(letter)
      used_a_guess
      printer
    else
      used_a_guess
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

# hangman = Hangman.new("sandwich")
# hangman.check_guess("s")
# hangman.check_guess("a")
# hangman.check_guess("n")
# hangman.check_guess("z")
# hangman.check_guess("w")
# hangman.check_guess("i")
# hangman.check_guess("p")
# hangman.check_guess("o")
# hangman.check_guess("r")
# hangman.check_guess("q")

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
