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

  #checking that two things are actually the same thing, the same object in memory
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      #the same array for that return true
      expect(c).to equal(e)
      expect(c).to be(e)

    end
  end
end
