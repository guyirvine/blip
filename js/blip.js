//It is recommended to use this code as a template, and custom implement
//this for each site

function blip( href ) {
  key = href.slice( href.lastIndexOf( "/" ) + 1);
  url = "/blip?k=" + key + "&s=" + $.cookie( "session" );
  $.get(url);
}


