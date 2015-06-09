require_relative 'exercise2'
require 'rspec'

describe "#nearest_larger" do
  let(:new_list) { LinkedList.new("Element 1", "Element 2", "Element 3") }

  it 'returns the ordered list in reverse' do
    new_list.reverse!
    expect(new_list.to_s).to eq('["Element 3", "Element 2", "Element 1"]')
  end

end