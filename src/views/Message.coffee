class window.Message extends Backbone.View
  className: 'message'

  template: _.template '<h2>New Game</h2>'

  initialize: ->
    # @collection.on 'add remove change', => @render()
    # @render()
    @model.get('playerHand').on 'add remove change', => @render()
    @model.get('dealerHand').on 'add remove change', => @render()
    @render()
    

  render: ->
    @$el.children().detach()
    @$el.html @template
    if @model.get('playerHand').scores()[0] > 21 && @model.get('playerHand').scores()[1] > 21
      $('.message h2').text 'You busted & lost!'
    else if @model.get('dealerHand').scores()[0] > 21 && @model.get('dealerHand').scores()[0] > 21 
      $('.message h2').text 'Dealer busted'
    else if @model.get('dealerHand').scores()[1] > @model.get('playerHand').scores()[1] && @model.get('playerHand').scores()[1]<22 && @model.get('dealerHand').scores()[1]<22
      $('.message h2').text 'dealer won'
    else if @model.get('dealerHand').scores()[1] < @model.get('playerHand').scores()[1] && @model.get('dealerHand').scores()[0]>16 && @model.get('playerHand').scores()[1]<22
      $('.message h2').text 'player won'  
    else if @model.get('dealerHand').scores()[1] == @model.get('playerHand').scores()[1]
      $('.message h2').text 'tied'  

