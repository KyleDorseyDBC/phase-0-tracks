require_relative 'hangman'

describe Hangman do
  let(:word) { Hangman.new("sandwich")}

  it "returns the correct number of guesses" do
    expect(word.remaining_guesses).to eq 8
  end

  it "checks if the letter 'a' is in the array" do
    expect(word.check_guess("a")).to eq "Your current progress is : _ a _ _ _ _ _ _, You have 7 guesses left!"
  end

  it "Check to make sure guesses are not consumed when guessing a the same letter twice" do
    word.check_guess("a")
    expect(word.check_guess("a")).to eq "You have already guessed this letter, this wont take a guess"
  end

  it "The letter is guessed incorrectly too many times" do
    word.check_guess("z")
    word.check_guess("a")
    word.check_guess("m")
    word.check_guess("n")
    word.check_guess("q")
    word.check_guess("c")
    word.check_guess("i")
    expect(word.check_guess("w")).to eq "Sorry, better luck next time"
  end

  it "The word is guessed correctly" do
    word.check_guess("s")
    word.check_guess("a")
    word.check_guess("d")
    word.check_guess("n")
    word.check_guess("h")
    word.check_guess("c")
    word.check_guess("i")
    expect(word.check_guess("w")).to eq "Congrats you won! The word was Sandwich"
  end
end