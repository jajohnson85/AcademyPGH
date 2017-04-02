require 'template_engine'

describe Template_reader do
  describe ".get_template_fields" do
    context "when given Hi {{name}}" do
     it "returns [name]" do
       tr = Template_reader.new
       tr.set_template "Hi {{name}}"
       expect(tr.get_template_fields).to match_array(["name"])
     end
   end
   context "when given Hi {{name}}, today is {{day}}" do
      it "returns ['name', 'day']" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}, today is {{day}}"
        expect(tr.get_template_fields).to match_array(["name", "day"])
      end
    end
    describe "run_template" do
      context "when given Hi {name} and {name => 'John'}" do
        it "returns Hi John" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}"
        expect(tr.run_template({'name' => 'John'})).to eql("Hi John")
      end
    end
    describe "run_template" do
      context "When given the people at my table are {{name}}, {{name}}, {{food}} and {{name}}." do
        it "returns the people are my table are jason, kate, apple, and mary." do
          tr = Template_reader.new
          tr.set_template "the people at my table are {{name}}, {{name}}, {{food}} and {{name}}."
          expect(tr.run_template())
        end
      end
    end
  end
end
end
