class JsonMock {
  static final moviesJson = {
    'id': 1234,
    'title': 'mock title',
    'overview': 'mock overview',
    'poster_path': 'mock poster path',
    'vote_average': 9.5
  };

  static final allMoviesJson = {
    'results': [
      {
        'id': 1234,
        'title': 'title 1',
        'overview': 'overview 1',
        'poster_path': 'poster path 1',
        'vote_average': 9.5,
      },
      {
        'id': 4321,
        'title': 'title 2',
        'overview': 'overview 2',
        'poster_path': 'poster path 2',
        'vote_average': 9.5
      }
    ]
  };
}
