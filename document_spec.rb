require_relative 'document'

describe "document" do
  before(:all) do
    
    @full_doc = Document.new("Lego Land Adventures!", "Aaron Addleman", "Lego Land is a great place for people of all ages, well, actually you need to be 3 or older. Nah, never mind, its best for everyone.")
    
  end

  describe "a simple document" do
    
    it "should open count the words" do
      expect(@full_doc.word_count).to eq(27)
    end

    it "should return an array of words from the content" do
      expect(@full_doc.words.class).to eq(Array)
    end
  end
end
