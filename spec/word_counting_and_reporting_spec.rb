require 'rspec'
require_relative '../lib/string.rb'

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'returns a hash that totals up word usage' do
    expect(@str.word_list).to eq({"the"=>2, "quick"=>1, "brown"=>1,"fox"=>2,"jumped"=>1, "over"=>1, "lazy"=>1})
  end
end
