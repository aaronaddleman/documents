# Author: Aaron Addleman
# Copyright 2015 Aaron Addleman
#
# Document: An example Ruby class

class Document
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
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