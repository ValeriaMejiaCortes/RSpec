class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace','Spades')}

#here we read all tests
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey I expected #{comparison} but I got #{card.suit} instead!"
  end


=begin def card
    Card.new('Ace', 'Spades')
  end
=end

=begin #run this block of code before each example
  before do
  #before(:example) do  //The same 11 line
    @card = Card.new('Ace', 'Spades')
  end
=end
end
