require 'string'
describe String do
  context "#reverse_sentence" do
    it 'returns the empty string when reversing an empty string' do
      expect(String.reverse_sentence("")).to be_empty
    end

    it 'returns nil when reversing a nil string' do
      expect(String.reverse_sentence(nil)).to be_nil
    end

    it 'returns nil when reversing something that isn\'t a string' do
      expect(String.reverse_sentence(12345)).to be_nil
    end

    it 'returns the same sentence when reversing a single letter sentence' do
      expect(String.reverse_sentence("H")).to eql "H"
    end

    it 'returns the same sentence when reversing a single word sentence' do
      expect(String.reverse_sentence("Hello")).to eql "Hello"
    end

    it 'returns the reverse of the sentence when reversing a multi-word sentence' do
      expect(String.reverse_sentence("Hello. I am the Doctor.")).to eql "Doctor. the am I Hello."
    end

    it 'returns the reveres of a sentence when reversing a multi-line sentence' do
      expect(String.reverse_sentence("Hello \n I am the Doctor.")).to eql("Doctor. the am I Hello")
    end
  end
end
