require 'rubygems'
require 'linguistics'

class Fixnum
  def to_words
    word_translation_range = 1..1_000_000
    
    if word_translation_range.include?(self)
      Linguistics::EN.numwords(self)
    else
      to_s
    end
  end
end

puts (1..1000).to_a.inject(0){ |acc, i| acc + i.to_words.gsub(/[\ \-]/, "").size }
