RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  #the same that 4 line to 8 line
  context 'with one-liner syntax' do
    it { is_expected.to eq(5)}
  end
end