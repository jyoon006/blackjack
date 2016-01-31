assert = chai.assert

describe "Game test", ->

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()
    deal = deck.dealDealer()

    a = hand.scores()[0] 
    

  # describe 'new score', ->
  #   it 'should calculate new score when hit'
  #   a = hand.scores()[0]
  #   hand.hit()
  #   a should.not.equal hand.scores()[0]


  # describe('stand', ->
  #   it 'triggers a "stand" event', ->
  #   model.stand()
  #   expect model.trigger .to.have.been.calledWith 'stand', model
    
  

