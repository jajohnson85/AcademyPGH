require 'testing_morse'

describe Morse_convert do
  describe "the function to_" do
    context "when given the letter A" do
      it "returns .-" do
        mc = Morse_convert.new
        expect(mc.to_morse("a")).to eql(".-")
      end
      end
      # context "when given a number 2" do
      #   it "returns II" do
      #     rc = RomanConverter.new
      #     expect(rc.convert(2)).to eql ("V")
      #   end
      #   end
    end
  end
