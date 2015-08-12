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
      
  def add_authors(name)
    @author += ", #{name}"
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
end