import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('dashboard');
  this.route('sets');
  this.route('songs', function() {
    this.route('index', { path: '/' });
    this.route('new');
    this.route('show', { path: '/:song_id' });
  });
});

export default Router;
