assert = chai.assert

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      assert.strictEqual deck.last(), hand.hit()
      assert.strictEqual deck.length, 49

  # describe 'stand', ->
  #   it 'should give the last card from the deck to dealer', ->
  #     assert.strictEqual deck.length, 49
  #     assert.strictEqual deck.last(), hand.stand()
  #     assert.strictEqual deck.length, 49

  # describe 'flip', ->
  #   it 'dealer flips the card when flip is called', ->
  #     # assert.strictEqual deck.length, 49
  #     # assert.strictEqual deck.last(), hand.stand()
  #     # assert.strictEqual deck.length, 49
  #     model.flip()
  #     expect model.get 'flip' to.have.been.called 
