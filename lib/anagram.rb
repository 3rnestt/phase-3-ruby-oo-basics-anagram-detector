class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  private

  def anagram?(other_word)
    return false if word == other_word

    word.chars.sort == other_word.chars.sort
  end
end