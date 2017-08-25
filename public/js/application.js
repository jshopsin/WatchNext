$(document).ready(function() {
  mediaHoundAuthentication();
  mediaHoundMovieSearch();
});

var mediaHoundAuthentication = function() {
  import { MHSDK } from 'houndjs';

  MHSDK.configure('mhclt_WatchNext', 'PMlt2Py3u2RjQ4RStewdGauEYkO1rki1u1KON2hw1te7uaIi');
};

var mediaHoundMovieSearch = function(movieTitle) {
  MHSearch.fetchResultsForSearchTerm(movieTitle, [MHSearch.SCOPE_MOVIE])
  .then(response => {
    const movie = response.content[0].object;
    console.log('First result:', movie.metadata.name);
  });
};
