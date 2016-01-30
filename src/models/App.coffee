# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  defaults: ->
    messages: 'testing'

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    

#if player score > 21
  #alert lost
  #deal new hands

#if player stay
  #dealer reveal
  #if dealer score <17
    #hit
  #else 
    #compare score and win/lose
