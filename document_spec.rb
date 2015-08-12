require_relative 'document'

describe "document" do
  before(:all) do
    
    @full_doc = Document.new("Lego Land Adventures!", "Aaron Addleman", "Lego Land is a great place for people of all ages, well, actually you need to be 3 or older. Nah, never mind, its best for everyone. But what is the best place to be when you are 3 years or older?")
    @partial_doc = Document.new("War and Peace", "", "This is a long book...")
    @unknown_author = Document.new("Peter Rabbit", "", "Rabbits like carrots")
    @add_author = Document.new("Fish Bowl", "Cod Lopis", "This is the fish bowl where fish live...")
  end

  describe "a simple document" do
    
    it "should open count the words" do
      expect(@full_doc.word_count).to eq(42)
    end

    it "should return an array of words from the content" do
      expect(@full_doc.words.class).to eq(Array)
    end

    it "should tell us this is a short document" do
      expect(@full_doc.long?).to eq("this document is not very long")
    end
  end

  describe 'a partial document' do
    it "should pick an author for us" do
      expect(@partial_doc.author).to eq("Tolstoy")
    end
  end

  describe 'a document that has now known author' do
    it "should set the author as 'Unknown'" do
      expect(@unknown_author.author).to eq("Unknown")
    end
  end
  
  describe 'adding authors' do
    it "should have only one author for now" do
      expect(@add_author.author.split(',').length).to eq(1)
    end

    it "should have two authors when adding an author" do
      @add_author.add_authors('Frodo','Gandolf')
      expect(@add_author.author.split(',').length).to eq(3)
    end
  end
  
  describe 'document information' do
    it "should locate index number for word starting from 0" do
      expect(@full_doc.index_for("the")).to eq(30)
    end

    it "should return the average word length" do
      expect(@full_doc.average_word_length).to eq(3.6904761904761907)
    end
  end


  
end
