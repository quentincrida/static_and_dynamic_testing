require('minitest/autorun')
require('minitest/reporters')
require_relative('../card_game.rb')
require('./card.rb')


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Clubs", 2)
    @card_game = CardGame.new()
    @cards = [@card1, @card2]


  end

  # def test_check_for_ace
  #   assert_equal(true, @card_game.check_for_ace(@card1))
  #   assert_equal(false, @card_game.check_for_ace(@card2))
  #
  # end
  #
  # def test_highest_card
  #   assert_equal(@card2, @card_game.highest_card(@card1,@card2))
  #   assert_equal(@card2, @card_game.highest_card(@card2, @card1))
  # end
  #
  def test_cards_total
    assert_equal("You have a total of 3", CardGame.cards_total(@cards))
  end

end
