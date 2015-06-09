require_relative 'finddup'

describe 'find_duplicate_retrun_index' do
  let(:numbers) { [1, 2, 3, 4, 5, 5, 6, 7] }
  let(:numbers1) { [1, 2, 3, 4, 5, 8, 6, 10, 10]}
  let(:numbers2) { [7, 1, 2, 3, 4, 5, 8, 6, 7]}

  it "method is defined" do
    expect(defined? find_duplicate_retrun_index).to eq 'method'
  end

  it "method takes a single argument" do
    expect(method(:find_duplicate_retrun_index).arity).to eq 1
  end

  it 'Returns the index of the first duplicate number' do
    expect(find_duplicate_retrun_index(numbers)).to eq 4
  end

  it 'returns the index of the first duplicate number' do
    expect(find_duplicate_retrun_index(numbers1)).to eq 7
  end

  it 'returns the index of the first duplicate number' do
    expect(find_duplicate_retrun_index(numbers2)).to eq 0
  end

end
