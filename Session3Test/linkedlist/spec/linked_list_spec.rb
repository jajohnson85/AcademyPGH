require 'linkedlist'
describe LinkedList do
  it "can add then find one element" do
  list = LinkedList.new
  list.add("a")
  expect(list.get(0)).to eq "a"
end

context "when i add two elements " do
  let(:first) {first}
  before(:each) do
    @list = LinkedList.new
    @list.add(first)
    @list.add(second)
  end


end
end
