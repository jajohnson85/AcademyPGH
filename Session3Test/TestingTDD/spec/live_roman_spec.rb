require 'live_roman'

describe RomanConverter do
  describe "to_r" do
    context "given the number 1" do
      it "returns I" do
        my_class = RomanConverter.new
        expect(my_class.to_r(1)).to eql("I")
      end
    end
    context "given the number 2" do
      it "returns II" do
        my_class = RomanConverter.new
        expect(my_class.to_r(2)).to eql("II")
      end
    end
    context "given the number 3" do
      it "returns III" do
        my_class = RomanConverter.new
        expect(my_class.to_r(3)).to eql("III")
      end
    end
    context "given the number 4" do
      it "returns IV" do
        my_class = RomanConverter.new
        expect(my_class.to_r(4)).to eql("IV")
      end
    end
  end
end
