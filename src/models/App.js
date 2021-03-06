// Generated by CoffeeScript 1.10.0
var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

window.App = (function(superClass) {
  extend(App, superClass);

  function App() {
    return App.__super__.constructor.apply(this, arguments);
  }

  App.prototype.defaults = function() {
    return {
      messages: 'testing'
    };
  };

  App.prototype.initialize = function() {
    var deck;
    this.set('deck', deck = new Deck());
    this.set('playerHand', deck.dealPlayer());
    return this.set('dealerHand', deck.dealDealer());
  };

  App.prototype.hit = function() {
    return this.trigger('hit', this);
  };

  return App;

})(Backbone.Model);
