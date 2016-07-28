require_relative 'hangman'

describe Hangman do
  let(:word) { Hangman.new("sandwich")}

  it "returns the correct number of guesses" do
    expect(word.number_of_guesses).to eq 8
  end

  it "prints out an empty array" do
    expect(word.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    word.delete_item("do the dishes")
    expect(word.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(word.get_item(0)).to eq "do the dishes"
  end
end