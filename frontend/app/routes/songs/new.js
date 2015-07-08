import Ember from 'ember';
import $ from 'jquery';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('song');
  },

  actions: {
    save: function() {
      var valid = $('.ui.form').form('validate form');
      if (!valid) {
        return false;
      }

      var _this = this;
      var model = this.currentModel;

      model.save().then(function(song) {
        _this.transitionTo('songs.show', song);
      }, function() {
      });
    },

    cancel: function() {
      this.transitionTo('dashboard');
    },

    willTransition: function() {
      var model = this.currentModel;

      if (model.get('isNew')) {
        model.deleteRecord();
      }
    }
  }
});
