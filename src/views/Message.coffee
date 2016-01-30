class window.Message extends Backbone.View
  className: 'message'

  template: _.template '<h2></h2>'



  initialize: ->
    @collection.on 'add remove change', => @render()
    @render()


  render: ->
    @$el.children().detach()
    @$el.html @template 
    @$('h2').text 'New Game'


#<% if(isDealer){ %>Dealer<% }else{ %>You<% } %> 
#  document.location.href = "";