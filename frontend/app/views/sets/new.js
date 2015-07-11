import Ember from 'ember';
import $ from 'jquery';

export default Ember.View.extend({
  didInsertElement: function() {
    $('.ui.form')
      .form({
        name: {
          identifier :'name',
          rules: [
          {
            type: 'empty',
            prompt: 'Please enter a name for your set'
          }
          ]
        }
      });

    $('select.dropdown')
      .dropdown();
  }
});
