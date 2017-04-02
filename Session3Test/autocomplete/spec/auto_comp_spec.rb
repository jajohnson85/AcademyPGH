require 'auto_comp_class'

describe Auto_complete do
  describe "find_matches" do
    context "when given 'he'" do
      it "returns ['name'] do
        ac = Auto_complete.new
        expect (ac.find_matches("he").eql('hello')
      end
    end
  end
end
