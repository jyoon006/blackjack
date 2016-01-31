// Generated by CoffeeScript 1.10.0
var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

window.Message = (function(superClass) {
  extend(Message, superClass);

  function Message() {
    return Message.__super__.constructor.apply(this, arguments);
  }

  Message.prototype.className = 'message';

  Message.prototype.template = _.template('<h2>New Game</h2>');

  Message.prototype.initialize = function() {
    this.model.get('playerHand').on('add remove change', (function(_this) {
      return function() {
        return _this.render();
      };
    })(this));
    this.model.get('dealerHand').on('add remove change', (function(_this) {
      return function() {
        return _this.render();
      };
    })(this));
    return this.render();
  };

  Message.prototype.render = function() {
    this.$el.children().detach();
    this.$el.html(this.template);
    if (this.model.get('playerHand').scores()[0] > 21 && this.model.get('playerHand').scores()[1] > 21) {
      return $('.message h2').text('You busted & lost!');
    } else if (this.model.get('dealerHand').scores()[0] > 21 && this.model.get('dealerHand').scores()[0] > 21) {
      return $('.message h2').text('Dealer busted');
    } else if (this.model.get('dealerHand').scores()[1] > this.model.get('playerHand').scores()[1] && this.model.get('playerHand').scores()[1] < 22 && this.model.get('dealerHand').scores()[1] < 22) {
      return $('.message h2').text('dealer won');
    } else if (this.model.get('dealerHand').scores()[1] < this.model.get('playerHand').scores()[1] && this.model.get('dealerHand').scores()[0] > 16 && this.model.get('playerHand').scores()[1] < 22) {
      return $('.message h2').text('player won');
    } else if (this.model.get('dealerHand').scores()[1] === this.model.get('playerHand').scores()[1]) {
      return $('.message h2').text('tied');
    }
  };

  return Message;

})(Backbone.View);
