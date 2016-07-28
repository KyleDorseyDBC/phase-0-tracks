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
    p letter
    p @guessed_array
    @guessed_array.delete_at(letter_index + 1)
    p @guessed_array
  end

  def check_guess(letter)
    if @guessed_array.include?(letter) == true
      puts "you have already guessed this letter, this wont take a guess"
      printer
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
        puts "Sorry, better luck next time"
        return
      else
        puts "Congrats you won! The word was #{@correct_answer.join(' ').delete(' ').capitalize}"
        return
      end
    else
      puts "Your current progress is : #{@guessed_array.join(' ')}, You have #{@remaining_guesses} guesses left!"
    end
  end
end

hangman = Hangman.new("sandwich")
hangman.number_of_guesses
hangman.create_empty_array
hangman.check_guess("s")
hangman.check_guess("a")
hangman.check_guess("n")
hangman.check_guess("w")
hangman.check_guess("h")
hangman.check_guess("i")
hangman.check_guess("c")
hangman.check_guess("d")

