# spec/caesar_cipher_spec.rb
require "caesar_cipher"

describe "caesar_cipher" do

  context "given a string and a shift number" do
    it "given 1 it shift each letter by 1" do
      expect(caesar_cipher("hello1", 1)).to eql("ifmmp2")
    end

    it "ignore white spaces" do
      expect(caesar_cipher(" ", 1)).to eql(" ")
    end

    it "wrap around z" do
      expect(caesar_cipher("z", 1)).to eql("a")
    end

    it "keeps the same case" do
      expect(caesar_cipher("AaA", 1)).to eql("BbB")
    end

    it "ignore punctuation and punctuation marks" do
      expect(caesar_cipher("abc!?", 1)).to eql("bcd!?")
    end

  end

end
