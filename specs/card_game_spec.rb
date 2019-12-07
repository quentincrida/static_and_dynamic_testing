require('minitest/autorun')
require('minitest/reporters')
require_relative('../card_game.rb')


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestCardGame < MiniTest::Test

  def setup()
    @card1 = Card.new("Spades", 2)
    @card2 = Card.new("Clubs", 1)

  end

  def test_checkforAce


end
