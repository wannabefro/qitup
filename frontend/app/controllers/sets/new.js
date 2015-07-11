import Ember from 'ember';

export default Ember.Controller.extend({
  songs: function() {
    return this.store.find('song');
  }.property()
});
