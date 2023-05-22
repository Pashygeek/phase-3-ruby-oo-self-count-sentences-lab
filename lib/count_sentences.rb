require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    sentences.reject(&:empty?).count
  end
end

sentence = "Is that the burger we are having?"

puts sentence.sentence?
puts sentence.question?
puts sentence.exclamation?
puts sentence.count_sentences