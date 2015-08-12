# Author: Aaron Addleman
# Copyright 2015 Aaron Addleman
#
# Document: An example Ruby class

class Document
  attr_accessor :title, :author, :content

  def initialize(title=nil, author=nil, content=nil)
    @title = title
    @author = author.length > 0 ? author : find_author
    @content = content
  end

  def find_author
    case title
    when "War and Peace"
      "Tolstoy"
    when "Romeo and .*"
      "Maybe Shakespeare?"
    else
      "Unknown"
    end
  end
      
  def add_authors(*names)
    @author += ",#{names.join(',')}"
  end

  def words
    @content.split
  end

  def word_count
    words.size
  end

  def long?
    if words.size < 100
      "this document is not very long"
    else
      "quick, get more ink for the presses!"
    end
  end

  def index_for(word)
    # could also use map
    # could also use inject
    words.find_index { |this_word| word == this_word }
  end

  def average_word_length
    total = words.inject(0.0) { |result, word| word.size + result }
    total / word_count
  end
end