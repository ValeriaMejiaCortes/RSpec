RSpec.describe 'equalty matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  #eq only compare the value
  describe 'eq matcher' do
    it 'test for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  #eql compare value and type
  describe 'eql matcher' do
    it 'test for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end


end