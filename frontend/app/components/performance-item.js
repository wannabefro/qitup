import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'div',
  classNames: ['item'],

  inflection: function() {
    var songCount = this.get('performance.songs.length');
    return songCount === 1 ? 'song' : 'songs';
  }.property('performance.songs.@each')
});
