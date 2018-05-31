//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
var trackstar = {};
trackstar.report = function(eventName){
  // create an event JSON object to send to the TrackStar analytics service
  var event = {event: { name: eventName }};
  // initialize a new XMLHttpRequest() (AJAX request)
  var request = new XMLHttpRequest();
  // set the HTTP method to POST, the url of our events endpoint, and allow the request to run asynchronously
  request.open("POST", "http://localhost:3000/api/events", true);
  // set the request Content-Type header to 'application/json'
  request.setRequestHeader('Content-Type', 'application/json');
  // send the request
  request.send(JSON.stringify(event));
};
